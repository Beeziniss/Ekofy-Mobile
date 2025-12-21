import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/package_order.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class OrderApiDatasource {
  final GraphQLClient client;

  OrderApiDatasource(this.client);

  Future<List<Query$PackageOrdersList$packageOrders$items>> fetchPackageOrders(
    String clientId,
  ) async {
    try {
      final variables = Variables$Query$PackageOrdersList(clientId: clientId);
      final options = Options$Query$PackageOrdersList(
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query$PackageOrdersList(options);

      if (result.hasException) {
        throw Exception('Failed to fetch package orders: ${result.exception}');
      }

      return result.parsedData?.packageOrders?.items ?? [];
    } catch (e) {
      throw Exception('Failed to fetch package orders: $e');
    }
  }

  Future<Query$PackageOrderDetail$packageOrders$items?> fetchPackageOrderDetail(
    String orderId,
  ) async {
    try {
      final variables = Variables$Query$PackageOrderDetail(orderId: orderId);
      final options = Options$Query$PackageOrderDetail(
        variables: variables,
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query$PackageOrderDetail(options);

      if (result.hasException) {
        throw Exception(
          'Failed to fetch package order detail: ${result.exception}',
        );
      }

      final items = result.parsedData?.packageOrders?.items;
      if (items != null && items.isNotEmpty) {
        return items.first;
      }
      return null;
    } catch (e) {
      throw Exception('Failed to fetch package order detail: $e');
    }
  }
}
