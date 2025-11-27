import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestApiDataSource {
  final GraphQLClient client;

  RequestApiDataSource(this.client);

  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllRequest() async {
    final options = Options$Query$PublicRequestQuery();

    final result = await client.query(options);
    if (result.hasException) {
      throw Exception('Oops! Server error, please feedback to system admin');
    }

    return result.parsedData?.requests?.items ?? [];
  }
}
