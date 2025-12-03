import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestApiDataSource {
  final GraphQLClient client;

  RequestApiDataSource(this.client);

  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequest() async {
    try {
      final options = Options$Query$PublicRequestQuery(
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query(options);
      return result.parsedData?.requests?.items ?? [];
    } catch (e) {
      throw Exception('Failed to fetch requests: $e');
    }
  }

  Future<QueryResult<Mutation$CreatePublicRequest>> createPublicRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  }) async {
    final variables = Variables$Mutation$CreatePublicRequest(
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
    );

    final options = Options$Mutation$CreatePublicRequest(variables: variables);
    QueryResult<Mutation$CreatePublicRequest> result;
    result = await client.mutate$CreatePublicRequest(options);

    return result;
  }

  Future<void> updatePublicRequest({
    required String id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    double? min,
    double? max,
    Enum$RequestStatus? status,
  }) async {
    final variables = Variables$Mutation$UpdatePublicRequest(
      id: id,
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
      status: status,
    );

    final options =
        Options$Mutation$UpdatePublicRequest(variables: variables);
    await client.mutate$UpdatePublicRequest(options);
  }

  Future<List<Query$OwnRequestsQuery$ownRequests$items>> fetchOwnRequests() async {
    try {
      final options = Options$Query$OwnRequestsQuery(
        fetchPolicy: FetchPolicy.networkOnly,
      );

      final result = await client.query(options);
      return result.parsedData?.ownRequests?.items ?? [];
    } catch (e) {
      throw Exception('Failed to fetch own requests: $e');
    }
  }

  
}
