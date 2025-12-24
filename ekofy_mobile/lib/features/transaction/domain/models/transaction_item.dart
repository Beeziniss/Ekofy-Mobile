import 'package:ekofy_mobile/features/transaction/domain/models/transaction_status.dart';

class TransactionItem {
  final String id;
  final String? stripePaymentId;
  final int amountMinor;
  final String currency;
  final DateTime createdAt;
  // final TransactionStatus status;
  final List<String> paymentMethods;
  final String? packageName;
  final String? fullName;
  final String? email;
  final String? from;
  final String? to;

  const TransactionItem({
    required this.id,
    this.stripePaymentId,
    required this.amountMinor,
    required this.currency,
    required this.createdAt,
    // required this.status,
    required this.paymentMethods,
    this.packageName,
    this.fullName,
    this.email,
    this.from,
    this.to,
  });
}

String formatShortId(String id) {
  if (id.length <= 8) return '#$id';
  return '#${id.substring(id.length - 8)}';
}

String formatAmountMajor(int minor, String currency) {
  //INFO: Simple formatting without intl; convert cents to major units with 2 decimals.
  final major = minor / 100.0;
  if (currency == 'vnd') {
    currency = '₫';
  } else {
    currency = '\$';
  }
  return '${major.toStringAsFixed(0)} $currency';
}
