import 'package:ekofy_mobile/features/request/data/datasources/request_api_datasource.dart';
import 'package:ekofy_mobile/features/request/domain/repositories/request_repository.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RequestRepositoryImpl implements RequestRepository {
  final RequestApiDataSource apiDatasource;

  RequestRepositoryImpl(this.apiDatasource);

  @override
  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequestData() async {
    return await apiDatasource.fetchAllPublicRequest();
  }

  @override
  Future<QueryResult<Mutation$CreatePublicRequest>> createPublicRequest({
    required String title,
    required String summary,
    required String detailDescription,
    required int duration,
    required double min,
    required double max,
  }) async {
    return await apiDatasource.createPublicRequest(
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
    );
  }

  @override
  Future<QueryResult<Mutation$UpdatePublicRequest>> updatePublicRequest({
    required String id,
    String? title,
    String? summary,
    String? detailDescription,
    int? duration,
    required double min,
    required double max,
    Enum$RequestStatus? status,
  }) async {
    return await apiDatasource.updatePublicRequest(
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
  Future<List<Query$OwnRequestsQuery$requests$items>> fetchOwnRequests(
    String requestUserId,
  ) async {
    return await apiDatasource.fetchOwnRequests(requestUserId);
  }

  @override
  Future<bool> sendRequest({
    String? publicRequestId,
    required String artistId,
    String? requirements,
    required String packageId,
    required bool isDirectRequest,
  }) async {
    return await apiDatasource.sendRequest(
      publicRequestId: publicRequestId,
      artistId: artistId,
      requirements: requirements,
      packageId: packageId,
      isDirectRequest: isDirectRequest,
    );
  }
}
