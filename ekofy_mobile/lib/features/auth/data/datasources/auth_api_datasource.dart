// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:ekofy_mobile/features/auth/data/models/login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/login_response.dart';

class AuthApiDatasource {
  final Dio dio;

  AuthApiDatasource(this.dio);

  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final response = await dio.post(
      '/login',
      data: {'email': loginRequest.email, 'password': loginRequest.password},
    );
    return LoginResponse.fromJson(response.data);
  }
}
