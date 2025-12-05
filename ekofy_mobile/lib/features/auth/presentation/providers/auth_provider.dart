import 'dart:developer';
import 'dart:io';

import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:ekofy_mobile/features/auth/data/models/request/register_request.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../core/utils/results/result_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ekofy_mobile/core/di/injector.dart';

part 'auth_state.dart';

class AuthNotifier extends Notifier<AuthState> {
  Stream<AuthState> get stream =>
      Stream.periodic(Duration(milliseconds: 100), (_) => state).distinct();

  @override
  AuthState build() {
    return AuthInitial();
  }

  AuthRepository get _authRepository => ref.read(authRepositoryProvider);

  // Login method - Thay thế AuthLoginStarted event
  Future<void> login({required String email, required String password}) async {
    state = AuthLoginInProgress();
    //info: wait 3s to do next action
    await Future.delayed(Duration(seconds: 3));
    //info: call repo -> api
    final result = await _authRepository.login(
      email: email,
      password: password,
    );

    state = switch (result) {
      Success() => AuthLoginSuccess(),
      Failure() => AuthLoginFailure(result.message),
    };
  }

  Future<void> loginWithGoogle() async {
    state = AuthLoginInProgress();
    try {
      final String? serverClientId = dotenv.env['WEB_CLIENT_ID'];

      final GoogleSignIn googleSignIn = GoogleSignIn.instance;

      await googleSignIn.initialize(serverClientId: serverClientId);

      final GoogleSignInAccount googleUser = await googleSignIn.authenticate();

      // if (googleUser == null) {
      //   // User canceled the sign-in
      //   state = AuthInitial();
      //   return;
      // }

      final GoogleSignInAuthentication googleAuth = googleUser.authentication;
      final String? idToken = googleAuth.idToken;
      log('Google ID Token: $idToken');
      if (idToken == null) {
        state = AuthLoginFailure('Failed to retrieve Google ID token');
        return;
      }

      final result = await _authRepository.loginWithGoogle(idToken);

      state = switch (result) {
        Success() => AuthLoginSuccess(),
        Failure() =>
          result.statusCode == HttpStatus.serviceUnavailable
              ? AuthLoginFailure(
                  'This email is already registered in the platform. Please link your Google account with the existing account',
                )
              : AuthLoginFailure(result.message),
      };
    } catch (e) {
      state = AuthLoginFailure('Google sign-in failed');
    }
  }

  // Register method - Thay thế AuthRegisterStarted event
  Future<void> register({
    required String email,
    required String password,
    required String confirmPassword,
    required String fullName,
    required DateTime birthDate,
    required String gender,
    required String displayName,
  }) async {
    state = AuthRegisterInProgress();

    final result = await _authRepository.register(
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      fullName: fullName,
      birthDate: birthDate,
      gender: gender,
      displayName: displayName,
    );

    state = switch (result) {
      Success() => AuthRegisterSuccess(),
      Failure() => AuthRegisterFailure(result.message, result.statusCode.toString()),
    };
  }

  Future<void> verifyOTP({required String email, required String otp}) async {
    state = AuthVerifyOtpInProgress();

    final result = await _authRepository.verifyOTP(
      email: email,
      providedOtp: otp,
    );

    state = switch (result) {
      Success() => AuthVerifyOtpSuccess(),
      Failure() => AuthVerifyOtpFailure(result.message),
    };
  }

  Future<void> authenticate() async {
    final result = await _authRepository.getAuthenToken();

    state = switch (result) {
      Success(data: final token) when token != null => AuthAuthenticateSuccess(
        token,
      ),
      Success() => AuthAuthenticateUnauthenticated(),
      Failure() => AuthAuthenticateFailure(result.message),
    };
  }

  // Logout method - Thay thế AuthLogoutStarted event
  Future<void> logout() async {
    await _authRepository.logout();
    state = AuthLogoutSuccess();
  }

  // Reset to initial - Thay thế AuthStarted event (for retry)
  void reset() {
    state = AuthInitial();
  }

  Future<String?> getToken() async {
    return ref.read(authLocalDatasourceProvider).getAccessToken();
  }
}
