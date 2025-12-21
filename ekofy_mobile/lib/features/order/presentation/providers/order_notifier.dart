import 'dart:developer';
import 'package:ekofy_mobile/core/utils/helper.dart';
import 'package:ekofy_mobile/features/order/domain/repositories/order_repository.dart';
import 'package:ekofy_mobile/features/order/presentation/providers/order_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

class OrderNotifier extends StateNotifier<OrderState> {
  final Ref ref;
  final OrderRepository repository;

  OrderNotifier(this.ref, this.repository) : super(OrderState());

  Future<void> fetchOrders() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final jwtPayload = await Helper.decodeJwtUnverified(ref);
      final userId = jwtPayload?['userId'] as String?;

      if (userId == null) {
        throw Exception('User ID not found');
      }

      final orders = await repository.fetchPackageOrders(userId);
      state = state.copyWith(orders: orders, isLoading: false);
    } catch (e) {
      log('Fetch orders error: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> fetchOrderDetail(String orderId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final order = await repository.fetchPackageOrderDetail(orderId);
      state = state.copyWith(selectedOrder: order, isLoading: false);
    } catch (e) {
      log('Fetch order detail error: $e');
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
