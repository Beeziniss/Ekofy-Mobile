import 'package:ekofy_mobile/core/widgets/badges/status_badge.dart';
import 'package:flutter/material.dart';

import 'package:ekofy_mobile/features/request_hub/data/models/request_status.dart';

extension RequestStatusUI on RequestStatus {
  AppStatusStyle get ui {
    switch (this) {
      case RequestStatus.completed:
        return const AppStatusStyle(
          label: 'Completed',
          bg: Color(0xFFDCFCE7),
          text: Color(0xFF065F46),
          border: Color(0xFF10B981),
        );
      case RequestStatus.pending:
        return const AppStatusStyle(
          label: 'Pending',
          bg: Color(0xFFFEF9C3),
          text: Color(0xFF92400E),
          border: Color(0xFFF59E0B),
        );
      case RequestStatus.inProgress:
        return const AppStatusStyle(
          label: 'In-progress',
          bg: Color(0xFFDBEAFE),
          text: Color(0xFF1D4ED8),
          border: Color(0xFF3B82F6),
        );
      case RequestStatus.rejected:
        return const AppStatusStyle(
          label: 'Rejected',
          bg: Color(0xFFFEE2E2),
          text: Color(0xFF7F1D1D),
          border: Color(0xFFEF4444),
        );
    }
  }
}
