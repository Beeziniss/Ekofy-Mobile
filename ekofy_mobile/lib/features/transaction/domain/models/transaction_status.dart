enum TransactionStatus { paid, pending, unpaid, unknown }

extension TransactionStatusX on TransactionStatus {
  String get label {
    switch (this) {
      case TransactionStatus.paid:
        return 'Paid';
      case TransactionStatus.pending:
        return 'Pending';
      case TransactionStatus.unpaid:
        return 'Unpaid';
      case TransactionStatus.unknown:
        return 'Unknown';
    }
  }
}