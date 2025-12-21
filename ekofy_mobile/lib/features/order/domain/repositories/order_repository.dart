import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';

abstract class OrderRepository {
  Future<List<Query$PackageOrdersList$packageOrders$items>> fetchPackageOrders(
    String clientId,
  );
  Future<Query$PackageOrderDetail$packageOrders$items?> fetchPackageOrderDetail(
    String orderId,
  );
}
