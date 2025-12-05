part of 'auth_provider.dart';

sealed class AuthState {}

class AuthInitial extends AuthState {}

// Login states
class AuthLoginInProgress extends AuthState {}

class AuthLoginSuccess extends AuthState {}

class AuthLoginFailure extends AuthState {
  final String message;
  AuthLoginFailure(this.message);
}

// Register states
class AuthRegisterInProgress extends AuthState {}

class AuthRegisterSuccess extends AuthState {}

class AuthRegisterFailure extends AuthState {
  final String message;
  final String status;
  AuthRegisterFailure(this.message, this.status);
}

// Verify OTP states
class AuthVerifyOtpInProgress extends AuthState {}

class AuthVerifyOtpSuccess extends AuthState {}

class AuthVerifyOtpFailure extends AuthState {
  final String message;
  AuthVerifyOtpFailure(this.message);
}

// Authenticate states
class AuthAuthenticateSuccess extends AuthState {
  final String token;
  AuthAuthenticateSuccess(this.token);
}

class AuthAuthenticateUnauthenticated extends AuthState {}

class AuthAuthenticateFailure extends AuthState {
  final String message;
  AuthAuthenticateFailure(this.message);
}

// Logout states
class AuthLogoutSuccess extends AuthState {}

class AuthLogoutFailure extends AuthState {
  final String message;
  AuthLogoutFailure(this.message);
}
