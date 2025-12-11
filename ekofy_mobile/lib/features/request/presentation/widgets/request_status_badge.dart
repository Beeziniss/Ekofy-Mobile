import 'package:ekofy_mobile/core/widgets/badges/status_badge.dart';
import 'package:ekofy_mobile/features/request/data/models/request_status.dart';
import 'package:flutter/material.dart';
import 'package:ekofy_mobile/features/request/presentation/widgets/request_status_badge_style.dart';


class RequestStatusBadge extends StatelessWidget {
  final RequestStatus status;
  const RequestStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return AppStatusBadge(style: status.ui);
  }
}
