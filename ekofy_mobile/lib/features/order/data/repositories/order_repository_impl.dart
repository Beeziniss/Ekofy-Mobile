import 'package:ekofy_mobile/features/order/data/datasources/order_api_datasource.dart';
import 'package:ekofy_mobile/features/order/domain/repositories/order_repository.dart';
import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';

class OrderRepositoryImpl implements OrderRepository {
  final OrderApiDatasource apiDatasource;

  OrderRepositoryImpl(this.apiDatasource);

  @override
  Future<List<Query$PackageOrdersList$packageOrders$items>> fetchPackageOrders(
    String clientId,
  ) async {
    return await apiDatasource.fetchPackageOrders(clientId);
  }

  @override
  Future<Query$PackageOrderDetail$packageOrders$items?> fetchPackageOrderDetail(
    String orderId,
  ) async {
    return await apiDatasource.fetchPackageOrderDetail(orderId);
  }
}
