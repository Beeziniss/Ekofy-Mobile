import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';

abstract class RequestRepository {
  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequestData();
}
