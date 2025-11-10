import 'package:ekofy_mobile/core/widgets/badges/status_badge.dart';
import 'package:ekofy_mobile/features/transactions/domain/models/transaction_item.dart';
import 'package:ekofy_mobile/features/transactions/domain/models/transaction_status.dart';
import 'package:flutter/material.dart';


extension TransactionStatusUI on TransactionStatus {
  AppStatusStyle get ui {
    switch (this) {
      case TransactionStatus.paid:
        return const AppStatusStyle(
          label: 'Paid',
          bg: Color(0xFFDCFCE7),
          text: Color(0xFF065F46),
          border: Color(0xFF10B981),
        );
      case TransactionStatus.pending:
        return const AppStatusStyle(
          label: 'Pending',
          bg: Color(0xFFFEF9C3),
          text: Color(0xFF92400E),
          border: Color(0xFFF59E0B),
        );
      case TransactionStatus.unpaid:
        return const AppStatusStyle(
          label: 'Unpaid',
          bg: Color(0xFFFEE2E2),
          text: Color(0xFF7F1D1D),
          border: Color(0xFFEF4444),
        );
      case TransactionStatus.unknown:
        return const AppStatusStyle(
          label: 'Unknown',
          bg: Color(0xFFE5E7EB),
          text: Color(0xFF111827),
          border: Color(0xFF9CA3AF),
        );
    }
  }
}
