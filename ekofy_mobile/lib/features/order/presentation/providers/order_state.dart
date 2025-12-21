import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';

class OrderState {
  final bool isLoading;
  final String? error;
  final List<Query$PackageOrdersList$packageOrders$items> orders;
  final Query$PackageOrderDetail$packageOrders$items? selectedOrder;

  OrderState({
    this.isLoading = false,
    this.error,
    this.orders = const [],
    this.selectedOrder,
  });

  OrderState copyWith({
    bool? isLoading,
    String? error,
    List<Query$PackageOrdersList$packageOrders$items>? orders,
    Query$PackageOrderDetail$packageOrders$items? selectedOrder,
  }) {
    return OrderState(
      isLoading: isLoading ?? this.isLoading,
      error: error,
      orders: orders ?? this.orders,
      selectedOrder: selectedOrder ?? this.selectedOrder,
    );
  }
}
