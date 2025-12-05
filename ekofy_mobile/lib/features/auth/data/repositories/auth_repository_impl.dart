import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_api_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/google_login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/register_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/verify_otp_request.dart';
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
        LoginRequest(email: email, password: password, isMobile: true),
      );
      //info: save token to storage

      return response.when(
        success: (res) async {
          await authLocalDatasource.saveToken(
            res!.result!.accessToken,
            res.result!.refreshToken,
          );
          // ref.read(appStateProvider.notifier).setUserId(res.result!.userId);
          return Success(null);
        },

        failure: (res, status) {
          return Failure(res, status);
        },
      );
    } on DioException catch (e) {
      log('$e');
      return Failure('Server or Request Error!', 500);
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
      return Failure('$e', 500);
    }
  }

  @override
  Future<ResultType> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String fullName,
    required DateTime birthDate,
    required String gender,
    required String displayName,
  }) async {
    try {
      final response = await authApiDatasource.register(
        RegisterRequest(
          email: email,
          password: password,
          confirmPassword: confirmPassword,
          fullName: fullName,
          birthDate: birthDate,
          gender: gender,
          displayName: displayName,
        ),
      );
      return response.when(
        success: (res) => Success(null),
        failure: (res, status) => Failure(res, status),
      );
    } on DioException catch (e) {
      log('$e');
      return Failure('Server or Request Error!', 500);
    }
  }

  @override
  Future<ResultType> logout() async {
    await authApiDatasource.logout();
    await authLocalDatasource.removeToken();
    return Success('Logout Successfully.');
  }

  @override
  Future<ResultType> loginWithGoogle(String googleToken) async {
    try {
      final response = await authApiDatasource.loginWithGoogle(
        GoogleLoginRequest(googleToken: googleToken, isMobile: true),
      );
      return response.when(
        success: (res) async {
          await authLocalDatasource.saveToken(
            res!.result!.accessToken,
            res.result!.refreshToken,
          );
          return Success(null);
        },
        failure: (res, status) {
          return Failure(res, status);
        },
      );
    } on DioException catch (e) {
      log('$e');
      return Failure('Server or Request Error!', 500);
    }
  }

  @override
  Future<ResultType> verifyOTP({
    required String email,
    required String providedOtp,
  }) async {
    try {
      final response = await authApiDatasource.verifyOTP(
        VerifyOtpRequest(email: email, providedOtp: providedOtp),
      );
      return response..when(
        success: (res) => Success(res),
        failure: (res, status) => Failure(res, status),
      );
    } on DioException catch (e) {
      log('$e');
      return Failure('Server Error!', 500);
    }
  }
}
