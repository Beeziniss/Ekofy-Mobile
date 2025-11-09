//INFO: Mock implementation with in-memory sample dataset.
import 'dart:async';

import 'package:ekofy_mobile/features/transactions/domain/models/transaction_status.dart';

import '../../domain/models/transaction_item.dart';
import 'transaction_repository.dart';

class MockTransactionRepository implements TransactionRepository {
  //INFO: Static sample data; mimic varied statuses & payment methods.
  static final List<TransactionItem> _data = [
    TransactionItem(
      id: 'trxn_202501010001_abcd1234abcd0001',
      stripePaymentId: 'pi_1ABCDEF000000001',
      amountMinor: 1299,
      currency: 'USD',
      createdAt: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
      status: TransactionStatus.paid,
      paymentMethods: const ['CARD'],
    ),
    TransactionItem(
      id: 'trxn_202501020002_bcde2345bcde0002',
      stripePaymentId: 'pi_1ABCDEF000000002',
      amountMinor: 599,
      currency: 'USD',
      createdAt: DateTime.now().subtract(const Duration(days: 3, hours: 4)),
      status: TransactionStatus.pending,
      paymentMethods: const ['CARD', 'WALLET'],
    ),
    TransactionItem(
      id: 'trxn_202501030003_cdef3456cdef0003',
      stripePaymentId: 'pi_1ABCDEF000000003',
      amountMinor: 2099,
      currency: 'USD',
      createdAt: DateTime.now().subtract(const Duration(days: 7, hours: 1)),
      status: TransactionStatus.unpaid,
      paymentMethods: const ['CARD'],
    ),
    TransactionItem(
      id: 'trxn_202501040004_defg4567defg0004',
      stripePaymentId: 'pi_1ABCDEF000000004',
      amountMinor: 999,
      currency: 'USD',
      createdAt: DateTime.now().subtract(const Duration(days: 14)),
      status: TransactionStatus.unknown,
      paymentMethods: const ['CARD'],
    ),
  ];

  final Duration artificialDelay;
  MockTransactionRepository({this.artificialDelay = const Duration(milliseconds: 750)});

  @override
  Future<List<TransactionItem>> listTransactions() async {
    await Future.delayed(artificialDelay); //INFO: simulate network latency
    return List.unmodifiable(_data);
  }

  @override
  Future<TransactionItem?> getById(String id) async {
    await Future.delayed(artificialDelay);
    try {
      return _data.firstWhere((e) => e.id == id);
    } catch (_) {
      return null;
    }
  }
}
