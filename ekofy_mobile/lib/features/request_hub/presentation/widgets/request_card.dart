import 'package:ekofy_mobile/features/request_hub/presentation/widgets/request_status_badge.dart';
import 'package:flutter/material.dart';

import '../../data/models/request.dart';
import '../../data/models/request_status.dart';


class RequestCard extends StatelessWidget {
  final RequestItem item;
  final VoidCallback? onTap;
  final VoidCallback? onViewDetails;
  final VoidCallback? onEdit;
  final VoidCallback? onCancel;

  const RequestCard({
    super.key,
    required this.item,
    this.onTap,
    this.onViewDetails,
    this.onEdit,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      label: 'Request card for ${item.title}',
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xFF1C1C1C),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: const Color(0xFF2C2C2C), width: 1),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _typeAvatar(item.type),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          item.description,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 12, color: Color(0xFF9CA3AF)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Semantics(
                    label: 'More actions',
                    child: IconButton(
                      icon: const Icon(Icons.more_horiz, color: Colors.white70),
                      onPressed: () => _showActions(context),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Icon(Icons.access_time, size: 14, color: Colors.grey[500]),
                  const SizedBox(width: 4),
                  Text(_relativeTime(item.createdAt), style: TextStyle(fontSize: 12, color: Colors.grey[400])),
                  const SizedBox(width: 12),
                  if (item.free)
                    _pill(label: 'Free', color: const Color(0xFF064E3B), textColor: const Color(0xFFA7F3D0))
                  else
                    _pill(label: _formatAmount(item.amount, item.currency)),
                  const Spacer(),
                  RequestStatusBadge(status: item.status),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _pill({required String label, Color? color, Color? textColor}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color ?? const Color(0xFF111827),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: const Color(0xFF374151), width: 0.6),
      ),
      child: Text(label, style: TextStyle(fontSize: 11, color: textColor ?? Colors.white70, fontWeight: FontWeight.w600)),
    );
  }

  Widget _typeAvatar(String type) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: const Color(0xFF2C2C2C),
      child: Text(
        type.isNotEmpty ? type[0].toUpperCase() : '?',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  void _showActions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF111111),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        final canEdit = item.status == RequestStatus.pending || item.status == RequestStatus.inProgress;
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.visibility),
                title: const Text('View Details'),
                onTap: () {
                  Navigator.pop(context);
                  onViewDetails?.call();
                },
              ),
              if (canEdit)
                ListTile(
                  leading: const Icon(Icons.edit),
                  title: const Text('Edit'),
                  onTap: () {
                    Navigator.pop(context);
                    onEdit?.call();
                  },
                ),
              ListTile(
                leading: const Icon(Icons.cancel_outlined),
                title: const Text('Cancel'),
                onTap: () {
                  Navigator.pop(context);
                  onCancel?.call();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  String _formatAmount(double amount, String currency) {
    return '${_currencySymbol(currency)}${amount.toStringAsFixed(2)}';
  }

  String _currencySymbol(String currency) {
    switch (currency.toUpperCase()) {
      case 'USD':
        return '\u000024';
      case 'EUR':
        return '\u000080';
      case 'VND':
        return '₫';
      default:
        return '';
    }
  }

  String _relativeTime(DateTime date) {
    final now = DateTime.now().toUtc();
    final d = date.toUtc();
    final diff = now.difference(d);
    if (diff.inSeconds < 60) return 'just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min ago';
    if (diff.inHours < 24) return '${diff.inHours}h ago';
    if (diff.inDays < 7) return '${diff.inDays}d ago';
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }
}
