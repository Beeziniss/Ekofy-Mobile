import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/login_request.dart';
import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiDatasource authApiDatasource;
  final AuthLocalDatasource authLocalDatasource;

  AuthRepositoryImpl(this.authApiDatasource, this.authLocalDatasource);

  @override
  Future<ResultType> login({
    required String email,
    required String password,
  }) async {
    try {
      final response = await authApiDatasource.login(
        LoginRequest(email: email, password: password),
      );
      //info: save token to storage

      response.when(
        success: (res) async {
          await authLocalDatasource.saveToken(
            res.result!.accessToken,
            res.result!.refreshToken,
          );
          return Success(null);
        },

        failure: (res, status) {
          return Failure(res);
        },
      );
      return Success('');
    } on DioException catch (e) {
      log('$e');
      return Failure('Server Error!');
    }
  }

  @override
  Future<ResultType<String?>> getAuthenToken() async {
    try {
      final token = await authLocalDatasource.getAccessToken();
      if (token == null) {
        return Success(null);
      }
      return Success(token);
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
  }
}
