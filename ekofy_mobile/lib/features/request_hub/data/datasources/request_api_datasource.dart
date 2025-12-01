import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestApiDataSource {
  final GraphQLClient client;

  RequestApiDataSource(this.client);

  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllRequest() async {
    try{
          final options = Options$Query$PublicRequestQuery(
      fetchPolicy: FetchPolicy.networkOnly,
    );

    final result = await client.query(options);
    return result.parsedData?.requests?.items ?? [];
    } catch (e) {
      throw Exception('Failed to fetch requests: $e');
    }
  }

  Future<QueryResult<Mutation$CreatePublicRequest>> createRequest({
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
}
