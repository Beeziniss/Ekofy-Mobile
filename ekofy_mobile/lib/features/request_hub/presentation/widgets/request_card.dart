import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/request.dart';

class RequestCard extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _typeAvatar(
                    item.requestor.avatarImage,
                    item.requestor.displayName,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          item.requestor.displayName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              size: 14,
                              color: Colors.grey[500],
                            ),
                            const SizedBox(width: 4),
                            Text(
                              _relativeTime(item.createdAt),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 12),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),
                  Semantics(
                    label: 'More actions',
                    child: IconButton(
                      icon: const Icon(Icons.more_horiz, color: Colors.white70),
                      onPressed: () => _showActions(context, ref),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    item.summary,
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(width: 8),
                  Row(
                    children: [
                      Spacer(),
                      _pill(
                        label:
                            '${Helper.formatCurrency(item.budget.min)} ${_convertCurrency(item.currency)} - ${Helper.formatCurrency(item.budget.max)} ${_convertCurrency(item.currency)}',
                        color: const Color(0xFF064E3B),
                        textColor: const Color(0xFFA7F3D0),
                      ),
                    ],
                  ),
                ],
              ),
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
      child: Text(
        label,
        style: TextStyle(
          fontSize: 11,
          color: textColor ?? Colors.white70,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _typeAvatar(String? url, String displayName) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: const Color(0xFF2C2C2C),
      backgroundImage: url != null ? NetworkImage(url) : null,
      child: url == null || url.isEmpty
          ? Text(
              displayName[0].toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          : null, // nếu có url thì không hiển thị chữ
    );
  }

  void _showActions(BuildContext context, WidgetRef ref) {
    final payload = ref.read(jwtPayloadProvider);
    final currentUserId = payload?['userId'] ?? payload?['sub'];
    final canEdit =
        currentUserId != null && currentUserId == item.requestUserId;

    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF111111),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) {
        // final canEdit = item.status == RequestStatus.open;
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

  String _convertCurrency(Enum$CurrencyType val) {
    switch (val) {
      case Enum$CurrencyType.VND:
        return '₫';
      default:
        return '';
    }
  }
}
