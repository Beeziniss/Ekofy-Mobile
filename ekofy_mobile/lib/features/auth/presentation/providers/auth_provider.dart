import 'package:ekofy_mobile/features/auth/domain/repositories/auth_repository.dart';
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

  // Register method - Thay thế AuthRegisterStarted event
  Future<void> register({
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    state = AuthRegisterInProgress();

    // TODO: Implement register logic
    // final result = await _authRepository.register(...);

    // state = switch (result) {
    //   Success() => AuthRegisterSuccess(),
    //   Failure() => AuthRegisterFailure(result.message),
    // };
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
    final storage = ref.read(secureStorageProvider);
    final token = await storage.read(key: 'accessToken');
    return token;
  }
}
