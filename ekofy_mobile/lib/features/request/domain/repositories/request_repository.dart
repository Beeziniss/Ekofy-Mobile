import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

abstract class RequestRepository {
  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequestData();

  Future<QueryResult<Mutation$CreatePublicRequest>> createPublicRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  });

  Future<QueryResult<Mutation$UpdatePublicRequest>> updatePublicRequest({
    required String id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    required double min,
    required double max,
    Enum$RequestStatus? status,
  });

  Future<List<Query$OwnRequestsQuery$ownRequests$items>> fetchOwnRequests();
}
