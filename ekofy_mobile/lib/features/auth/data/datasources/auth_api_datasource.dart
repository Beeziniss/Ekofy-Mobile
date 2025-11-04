// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ekofy_mobile/core/configs/api_handle.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/register_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/response/login_response.dart';
import 'package:ekofy_mobile/features/auth/data/models/response/register_response.dart';

class AuthApiDatasource {
  final ApiHandle api;

  AuthApiDatasource(this.api);

  Future<ResultType<LoginResponse>> login(LoginRequest loginRequest) async {
    return api.post<LoginResponse>(
      path: '/api/authentication/login/listener',
      data: {'email': loginRequest.email, 'password': loginRequest.password},
      fromJson: (json) => LoginResponse.fromJson(json),
    );
  }

  Future<ResultType<RegisterResponse>> register(
    RegisterRequest registerRequest,
  ) async {
    final data = {
      'email': registerRequest.email,
      'password': registerRequest.password,
      'confirmPassword': registerRequest.confirmPassword,
      'fullName': registerRequest.fullName,
      'birthDate': '2004-10-05T21:18:59.789Z',
      'gender': registerRequest.gender,
      'displayName': registerRequest.displayName,
    };

    return api.post<RegisterResponse>(
      path: '/api/authentication/register/listener',
      data: data,
      fromJson: (json) => RegisterResponse.fromJson(json),
    );
  }
}
