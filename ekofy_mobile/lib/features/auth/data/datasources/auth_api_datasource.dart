// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/response/login_response.dart';

class AuthApiDatasource {
  final Dio dio;

  AuthApiDatasource(this.dio);

  Future<ResultType<LoginResponse>> login(LoginRequest loginRequest) async {
    final response = await dio.post(
      '/api/authentication/login/listener',
      data: {'email': loginRequest.email, 'password': loginRequest.password},
    );
    if (response.statusCode == 200) {
      return ResultType.success(LoginResponse.fromJson(response.data));
    } else {
      return ResultType.failure(LoginResponse.fromJson(response.data).detail!);
    }
  }
}
