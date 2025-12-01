import 'package:ekofy_mobile/features/request_hub/data/datasources/request_api_datasource.dart';
import 'package:ekofy_mobile/features/request_hub/domain/repositories/public_request_repository.dart';
import 'package:ekofy_mobile/gql/mutation/generated/request_mutation.graphql.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';
import 'package:graphql/src/core/query_result.dart';

class RequestRepositoryImpl implements RequestRepository {
  final RequestApiDataSource apiDatasource;

  RequestRepositoryImpl(this.apiDatasource);

  @override
  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequestData() {
    return apiDatasource.fetchAllRequest();
  }

  @override
  Future<QueryResult<Mutation$CreatePublicRequest>> createRequest({required String title, required String summary, required String detailDescription, required int duration, required double min, required double max}) {
    return apiDatasource.createRequest(
      title: title,
      summary: summary,
      detailDescription: detailDescription,
      duration: duration,
      min: min,
      max: max,
    );
  }
}
