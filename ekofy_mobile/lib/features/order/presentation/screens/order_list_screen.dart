import 'package:ekofy_mobile/core/configs/assets/app_images.dart';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/order/presentation/screens/order_detail_screen.dart';
import 'package:ekofy_mobile/features/order/presentation/widgets/order_card.dart';
import 'package:ekofy_mobile/features/request/presentation/widgets/empty_state.dart';
import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OrderListScreen extends ConsumerStatefulWidget {
  const OrderListScreen({super.key});

  @override
  ConsumerState<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends ConsumerState<OrderListScreen> {
  bool _isInit = true;

  @override
  void initState() {
    super.initState();
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
    await ref.read(orderProvider.notifier).fetchOrders();
  }

  void _openDetail(
    BuildContext context,
    Query$PackageOrdersList$packageOrders$items item,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => OrderDetailScreen(orderId: item.id)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(orderProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('My Orders')),
      body: RefreshIndicator(
        onRefresh: _load,
        child: Builder(
          builder: (context) {
            if ((state.isLoading || _isInit) && state.orders.isEmpty) {
              return Center(
                child: Image.asset(AppImages.loader, gaplessPlayback: true),
              );
            }

            if (state.orders.isEmpty) {
              return EmptyState(
                title: 'No orders found',
                subtitle: 'You haven\'t placed any orders yet.',
                actionLabel: 'Browse Services',
                onAction: () {
                  // Navigate to browse services or home
                },
              );
            }

            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: state.orders.length,
              itemBuilder: (context, index) {
                final item = state.orders[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: OrderCard(
                    item: item,
                    onTap: () => _openDetail(context, item),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
