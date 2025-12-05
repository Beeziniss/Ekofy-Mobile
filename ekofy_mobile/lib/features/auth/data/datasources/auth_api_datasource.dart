// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ekofy_mobile/core/configs/api_handle.dart';
import 'package:ekofy_mobile/core/utils/results/result_type.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/google_login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/login_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/register_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/verify_otp_request.dart';
import 'package:ekofy_mobile/features/auth/data/models/response/login_response.dart';
import 'package:ekofy_mobile/features/auth/data/models/response/logout_response.dart';
import 'package:ekofy_mobile/features/auth/data/models/response/verify_otp_response.dart';

class AuthApiDatasource {
  final ApiHandle api;

  AuthApiDatasource(this.api);

  Future<ResultType<LoginResponse>> login(LoginRequest loginRequest) async {
    return await api.post<LoginResponse>(
      path: '/api/authentication/login/listener',
      data: {
        'email': loginRequest.email,
        'password': loginRequest.password,
        'isMobile': loginRequest.isMobile,
      },
      fromJson: (json) => LoginResponse.fromJson(json),
    );
  }

  Future<ResultType<void>> register(RegisterRequest registerRequest) async {
    final data = {
      'email': registerRequest.email,
      'password': registerRequest.password,
      'confirmPassword': registerRequest.confirmPassword,
      'fullName': registerRequest.fullName,
      'birthDate': registerRequest.birthDate.toIso8601String(),
      'gender': registerRequest.gender,
      'displayName': registerRequest.displayName,
    };

    return await api.post<void>(
      path: '/api/authentication/register/listener',
      data: data,
      fromJson: (json) => json,
    );
  }

  Future<ResultType<LogoutResponse>> logout() async {
    final data = {'isMobile': true};
    return await api.post(
      path: '/api/authentication/logout',
      data: data,
      fromJson: (json) => LogoutResponse.fromJson(json),
    );
  }

  Future<ResultType<LoginResponse>> loginWithGoogle(
    GoogleLoginRequest request,
  ) async {
    final data = {
      'googleToken': request.googleToken,
      'isMobile': request.isMobile,
    };
    return await api.post<LoginResponse>(
      path: '/api/authentication/login/listener/google',
      data: data,
      fromJson: (json) => LoginResponse.fromJson(json),
    );
  }

  Future<ResultType> verifyOTP(VerifyOtpRequest request) async {
    return await api.post(
      path: '/api/authentication/verify-otp',
      queryParameters: {
        'email': request.email,
        'providedOtp': request.providedOtp,
      },
      fromJson: (json) => VerifyOtpResponse.fromJson(json),
    );
  }
}
