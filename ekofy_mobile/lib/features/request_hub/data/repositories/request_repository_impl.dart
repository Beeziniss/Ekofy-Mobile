import 'package:ekofy_mobile/features/request_hub/data/datasources/request_api_datasource.dart';
import 'package:ekofy_mobile/features/request_hub/domain/repositories/request_repository.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql/src/core/query_result.dart';

class RequestRepositoryImpl implements RequestRepository {
  final RequestApiDataSource apiDatasource;

  RequestRepositoryImpl(this.apiDatasource);

  @override
  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequestData() {
    return apiDatasource.fetchAllPublicRequest();
  }

  @override
  Future<QueryResult<Mutation$CreatePublicRequest>> createPublicRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  }) {
    return apiDatasource.createPublicRequest(
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
    );
  }

  @override
  Future<void> updatePublicRequest({
    required String id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    double? min,
    double? max,
    Enum$RequestStatus? status,
  }) {
    return apiDatasource.updatePublicRequest(
      id: id,
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
      status: status,
    );
  }

  @override
  Future<List<Query$OwnRequestsQuery$ownRequests$items>> fetchOwnRequests() {
    return apiDatasource.fetchOwnRequests();
  }
}
