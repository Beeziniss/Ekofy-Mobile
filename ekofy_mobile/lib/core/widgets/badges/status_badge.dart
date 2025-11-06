import 'package:flutter/material.dart';

import '../../../features/request_hub/data/models/request_status.dart';

class StatusBadge extends StatelessWidget {
  final RequestStatus status;
  const StatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final colors = _statusColors(status);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: colors.background,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: colors.border, width: 0.6),
      ),
      child: Text(
        status.label,
        style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: colors.text),
      ),
    );
  }
}

class _StatusColors {
  final Color background;
  final Color text;
  final Color border;
  const _StatusColors(this.background, this.text, this.border);
}

_StatusColors _statusColors(RequestStatus status) {
  switch (status) {
    case RequestStatus.completed:
      return _StatusColors(
        const Color(0xFF064E3B), // dark green bg for dark theme
        const Color(0xFFA7F3D0), // light green text
        const Color(0xFF10B981),
      );
    case RequestStatus.pending:
      return _StatusColors(
        const Color(0xFF78350F),
        const Color(0xFFFDE68A),
        const Color(0xFFF59E0B),
      );
    case RequestStatus.inProgress:
      return _StatusColors(
        const Color(0xFF1E3A8A),
        const Color(0xFFBFDBFE),
        const Color(0xFF6366F1),
      );
    case RequestStatus.rejected:
      return _StatusColors(
        const Color(0xFF7F1D1D),
        const Color(0xFFFCA5A5),
        const Color(0xFFEF4444),
      );
  }
}
