import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/transactions/data/datasource/transaction_api_datasource.dart';
import 'package:ekofy_mobile/features/transactions/data/repositories/transaction_repository.dart';
import 'package:ekofy_mobile/features/transactions/domain/models/transaction_item.dart';
import 'package:ekofy_mobile/features/transactions/domain/models/transaction_status.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/invoice_query.graphql.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionRepositoryImpl implements TransactionRepository {
  final TransactionApiDatasource _datasource;
  final Ref _ref;

  TransactionRepositoryImpl(this._datasource, this._ref);

  @override
  Future<List<TransactionItem>> listTransactions() async {
    final jwtPayload = _ref.read(jwtPayloadProvider);
    final userId = jwtPayload?['sub'] ?? jwtPayload?['userId'];

    if (userId == null) {
      return [];
    }

    final items = await _datasource.getInvoicesByUserId(userId);
    return items.map((e) => _mapToDomain(e)).toList();
  }

  @override
  Future<TransactionItem?> getById(String id) async {
    final transactions = await listTransactions();
    try {
      return transactions.firstWhere((element) => element.id == id);
    } catch (e) {
      return null;
    }
  }

  TransactionItem _mapToDomain(
    Query$InvoicesByUserId$invoicesByUserId$items e,
  ) {
    TransactionStatus status = TransactionStatus.unknown;
    if (e.transaction.isNotEmpty) {
      final paidTx = e.transaction.any(
        (t) =>
            t.paymentStatus == Enum$PaymentTransactionStatus.PAID ||
            t.paymentStatus == Enum$PaymentTransactionStatus.PAID,
      );
      if (paidTx) {
        status = TransactionStatus.paid;
      } else {
        status = _mapStatus(e.transaction.last.paymentStatus);
      }
    } else {
      status = TransactionStatus.unpaid;
    }

    final paymentMethods = e.transaction
        .map((t) => t.stripePaymentMethod)
        .cast<String>()
        .toSet()
        .toList();

    return TransactionItem(
      id: e.id,
      amountMinor: (e.amount * 100).toInt(),
      currency: e.currency,
      createdAt: e.paidAt,
      status: status,
      paymentMethods: paymentMethods,
      packageName: e.oneOffSnapshot?.packageName,
      fullName: e.fullName,
      email: e.email,
    );
  }

  TransactionStatus _mapStatus(Enum$PaymentTransactionStatus status) {
    // if (status == null) return TransactionStatus.unknown;
    switch (status) {
      case Enum$PaymentTransactionStatus.PAID:
        return TransactionStatus.paid;
      case Enum$PaymentTransactionStatus.PENDING:
        return TransactionStatus.pending;
      default:
        return TransactionStatus.unpaid;
    }
  }
}
