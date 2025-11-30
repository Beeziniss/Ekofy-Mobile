import 'package:ekofy_mobile/features/request_hub/data/datasources/request_api_datasource.dart';
import 'package:ekofy_mobile/features/request_hub/domain/repositories/public_request_repository.dart';
import 'package:ekofy_mobile/gql/queries/generated/request_query.graphql.dart';

class RequestRepositoryImpl implements RequestRepository {
  final RequestApiDataSource apiDatasource;

  RequestRepositoryImpl(this.apiDatasource);

  @override
  Future<List<Query$PublicRequestQuery$requests$items>>
  fetchAllPublicRequestData() {
    return apiDatasource.fetchAllRequest();
  }
}
