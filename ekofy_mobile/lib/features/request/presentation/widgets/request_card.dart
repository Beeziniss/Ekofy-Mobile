import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/request/data/models/request_card_model.dart';
import 'package:ekofy_mobile/features/request/data/models/request_status.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RequestCard extends ConsumerWidget {
  final RequestCardModel item;
  final VoidCallback? onTap;
  final VoidCallback? onViewDetails;
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onCancel;

  const RequestCard({
    super.key,
    required this.item,
    this.onTap,
    this.onViewDetails,
    this.onEdit,
    this.onDelete,
    this.onCancel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDirect = item.type == Enum$RequestType.DIRECT_REQUEST;

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
                children: [
                  Expanded(
                    child: Text(
                      isDirect
                          ? 'Direct request for ${item.artistStageName ?? 'Unknown Artist'}'
                          : item.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
                    'Requirements: ',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    isDirect
                        ? (item.requirements ?? 'No requirements specified')
                        : item.summary,
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      if (!isDirect) ...[
                        Icon(Icons.price_check_sharp, size: 16),
                        const SizedBox(width: 8),
                        Text(
                          '${Helper.formatCurrency(item.minBudget)} ${_convertCurrency(item.currency)} - ${Helper.formatCurrency(item.maxBudget)} ${_convertCurrency(item.currency)}',
                          // color: const Color(0xFF064E3B),
                          // textColor: const Color(0xFFA7F3D0),
                        ),
                        const SizedBox(width: 8),
                      ] else ...[
                        Icon(Icons.price_check_sharp, size: 16),
                        const SizedBox(width: 8),
                        Text(
                          item.amount != null
                              ? '${Helper.formatCurrency(item.amount!)} ${_convertCurrency(item.currency)}'
                              : 'Amount not specified',
                        ),
                        const SizedBox(width: 8),
                      ],
                    ],
                  ),
                  if (item.duration != null) ...[
                    Row(
                      children: [
                        Icon(Icons.schedule, size: 16),
                        const SizedBox(width: 8),
                        Text('${item.duration} days', style: const TextStyle()),
                        Spacer(),
                        if (item.status != null)
                          _pill(
                            label: item.status!.name.toUpperCase(),
                            color: _getStatusColor(item.status!),
                            textColor: Colors.white,
                          ),
                      ],
                    ),
                  ],
                  Row(
                    children: [
                      Icon(Icons.calendar_today, size: 16),
                      const SizedBox(width: 8),
                      Text(
                        'Created date: ${_relativeTime(item.createdAt)}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white54,
                        ),
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

  Color _getStatusColor(RequestStatus status) {
    switch (status) {
      case RequestStatus.open:
        return Colors.yellow.withOpacity(0.2);
      case RequestStatus.pending:
        return Colors.green.withOpacity(0.2);
      case RequestStatus.confirmed:
        return Colors.purple.withOpacity(0.2);
      case RequestStatus.rejected:
        return Colors.red.withOpacity(0.2);
      case RequestStatus.closed:
        return Colors.deepOrangeAccent.withOpacity(0.2);
      default:
        return Colors.grey.withOpacity(0.2);
    }
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
    bool isValidUrl =
        url != null &&
        url.isNotEmpty &&
        (url.startsWith('http://') || url.startsWith('https://'));

    return CircleAvatar(
      radius: 20,
      backgroundColor: const Color(0xFF2C2C2C),
      backgroundImage: isValidUrl ? NetworkImage(url) : null,
      child: !isValidUrl
          ? Text(
              displayName[0].toUpperCase(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          : null,
    );
  }

  void _showActions(BuildContext context, WidgetRef ref) {
    final payload = ref.read(jwtPayloadProvider);
    final currentUserId = payload?['userId'] ?? payload?['sub'];
    final canEdit =
        currentUserId != null &&
        currentUserId == item.requestUserId &&
        item.status == RequestStatus.open;
    final canDelete =
        currentUserId != null &&
        currentUserId == item.requestUserId &&
        (item.status == RequestStatus.open);

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
              if (canDelete)
                ListTile(
                  leading: const Icon(Icons.delete_outline),
                  title: const Text('Delete'),
                  onTap: () {
                    Navigator.pop(context);
                    onDelete?.call();
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
