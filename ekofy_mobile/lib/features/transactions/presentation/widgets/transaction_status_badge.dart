import 'package:ekofy_mobile/core/widgets/badges/status_badge.dart';

import 'package:ekofy_mobile/features/transactions/domain/models/transaction_status.dart';
import 'package:flutter/material.dart';
import 'package:ekofy_mobile/features/transactions/presentation/widgets/transaction_status_badge_style.dart';


class TransactionStatusBadge extends StatelessWidget {
  final TransactionStatus status;
  const TransactionStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return AppStatusBadge(style: status.ui);
  }
}
