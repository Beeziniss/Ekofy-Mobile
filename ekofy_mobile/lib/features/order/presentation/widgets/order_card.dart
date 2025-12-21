import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final Query$PackageOrdersList$packageOrders$items item;
  final VoidCallback? onTap;

  const OrderCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final provider = (item.provider.isNotEmpty) ? item.provider.first : null;

    return Semantics(
      button: true,
      label: 'Order card for ${provider?.stageName ?? 'Unknown Provider'}',
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
                      'Order with ${provider?.stageName ?? 'Unknown Provider'}',
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
                  _buildStatusChip(item.status),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today,
                    size: 16,
                    color: Colors.white70,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'Started: ${item.startedAt != null ? Helper.formatDate(item.startedAt!) : 'Not started'}',
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.timer, size: 16, color: Colors.white70),
                  const SizedBox(width: 8),
                  Text(
                    'Duration: ${item.duration} days',
                    style: const TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChip(Enum$PackageOrderStatus status) {
    Color color;
    String label;

    switch (status) {
      case Enum$PackageOrderStatus.PAID:
        color = Colors.yellowAccent;
        label = 'PENDING';
        break;
      case Enum$PackageOrderStatus.IN_PROGRESS:
        color = Colors.orange;
        label = 'IN PROGRESS';
        break;
      case Enum$PackageOrderStatus.COMPLETED:
        color = Colors.green;
        label = 'COMPLETED';
        break;
      case Enum$PackageOrderStatus.DISPUTED:
        color = Colors.blueAccent;
        label = 'DISPUTED';
        break;
      case Enum$PackageOrderStatus.REFUND:
        color = Colors.purple;
        label = 'REFUNDED';
        break;
      default:
        color = Colors.grey;
        label = 'CANCELLED';
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
