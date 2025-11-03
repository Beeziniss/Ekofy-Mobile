import 'dart:developer';

import 'package:ekofy_mobile/core/utils/result_type.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/models/login_request.dart';
import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiDatasource authApiDatasource;
  final AuthLocalDatasource authLocalDatasource;

  AuthRepositoryImpl(this.authApiDatasource, this.authLocalDatasource);

  @override
  Future<Result> login({required String email, required String password}) async {
    try {
      final response = await authApiDatasource.login(
        LoginRequest(email: email, password: password),
      );
      //info: save token to storage
      await authLocalDatasource.saveToken(
        response.result.accessToken,
        response.result.refreshToken,
      );
      log(response.toJson().toString());
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
    return Success(null);
  }

  @override
  Future<Result<String?>> isAuthen() async{
    try{
      final token = await authLocalDatasource.getAccessToken();
      if(token == null){
        return Success(null);
      }
      return Success(token);
    }
    catch(e) {
      log('$e');
      return Failure('$e');
    }
  }
}
