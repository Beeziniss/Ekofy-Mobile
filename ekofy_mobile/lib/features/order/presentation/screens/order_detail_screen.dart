import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderDetailScreen extends ConsumerStatefulWidget {
  final String orderId;

  const OrderDetailScreen({super.key, required this.orderId});

  @override
  ConsumerState<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends ConsumerState<OrderDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isInit = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _load().then((_) {
        if (mounted) {
          setState(() {
            _isInit = false;
          });
        }
      });
    });
  }

  Future<void> _load() async {
    await ref.read(orderProvider.notifier).fetchOrderDetail(widget.orderId);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderProvider);
    final order = state.selectedOrder;

    if ((state.isLoading || _isInit) && order == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Order Detail')),
        body: Center(
          child: Image.asset(AppImages.loader, gaplessPlayback: true),
        ),
      );
    }

    if (order == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Order Detail')),
        body: const Center(child: Text('Order not found')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Detail'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Detail'),
            Tab(text: 'Submission'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [_buildDetailTab(order), _buildSubmissionTab(order)],
      ),
    );
  }

  Widget _buildDetailTab(Query$PackageOrderDetail$packageOrders$items order) {
    final package = (order.package != null && order.package!.isNotEmpty)
        ? order.package!.first
        : null;
    final client = (order.client != null && order.client!.isNotEmpty)
        ? order.client!.first
        : null;
    final provider = (order.provider != null && order.provider!.isNotEmpty)
        ? order.provider!.first
        : null;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Package Info'),
          _buildInfoRow('Package Name', package?.packageName ?? 'N/A'),
          _buildInfoRow(
            'Price',
            '${Helper.formatCurrency(package?.amount ?? 0)}',
          ),
          _buildInfoRow('Duration', '${order.duration} days'),
          const SizedBox(height: 16),
          if (package?.serviceDetails != null &&
              package!.serviceDetails!.isNotEmpty) ...[
            _buildSectionTitle('Package Features'),
            ...package!.serviceDetails!.map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  children: [
                    const Icon(Icons.check, size: 16, color: Colors.green),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        e.value,
                        style: const TextStyle(color: Colors.white70),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
          _buildSectionTitle('Participants'),
          _buildInfoRow('Client', client?.displayName ?? 'Unknown'),
          _buildInfoRow('Provider', provider?.stageName ?? 'Unknown'),
          const SizedBox(height: 16),
          _buildSectionTitle('Requirements'),
          Text(
            order.requirements,
            style: const TextStyle(color: Colors.white70),
          ),
          const SizedBox(height: 16),
          if (order.status == Enum$PackageOrderStatus.DISPUTED) ...[
            _buildSectionTitle('Disputed Reason'),
            Text(
              //order.disputedReason ??
              'No reason provided',
              style: const TextStyle(color: Colors.redAccent),
            ),
            const SizedBox(height: 16),
          ],
          if (order.review != null) ...[
            _buildSectionTitle('Review'),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                const SizedBox(width: 4),
                Text(
                  '${order.review!.rating}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              order.review!.content ?? '',
              style: const TextStyle(color: Colors.white70),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSubmissionTab(
    Query$PackageOrderDetail$packageOrders$items order,
  ) {
    final deliveries = order.deliveries;

    if (deliveries == null || deliveries.isEmpty) {
      return const Center(
        child: Text(
          'No submissions yet',
          style: TextStyle(color: Colors.white54),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: deliveries.length,
      itemBuilder: (context, index) {
        final delivery = deliveries[index];
        return Card(
          color: const Color(0xFF1C1C1C),
          margin: const EdgeInsets.only(bottom: 16),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Revision #${delivery.revisionNumber}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),
                if (delivery.notes != null) ...[
                  const Text(
                    'Notes:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    delivery.notes!,
                    style: const TextStyle(color: Colors.white54),
                  ),
                  const SizedBox(height: 8),
                ],
                if (delivery.deliveryFileUrl != null) ...[
                  const Text(
                    'File:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    delivery.deliveryFileUrl!,
                    style: const TextStyle(color: Colors.blueAccent),
                  ),
                  const SizedBox(height: 8),
                ],
                if (delivery.clientFeedback != null) ...[
                  const Divider(color: Colors.white24),
                  const Text(
                    'Feedback:',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    delivery.clientFeedback!,
                    style: const TextStyle(color: Colors.white54),
                  ),
                ],
                const SizedBox(height: 8),
                Text(
                  'Delivered: ${Helper.formatDate(delivery.deliveredAt!)}',
                  style: const TextStyle(fontSize: 12, color: Colors.white38),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(label, style: const TextStyle(color: Colors.white54)),
          ),
          Expanded(
            child: Text(value, style: const TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
