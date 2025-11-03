part of 'auth_bloc.dart';

class AuthEvent {}

class AuthStarted extends AuthEvent {}

class AuthLoginStarted extends AuthEvent {
  final String email;
  final String password;

  AuthLoginStarted({
    required this.email,
    required this.password
  });
}

class AuthLoginPrefilled extends AuthEvent {
  final String email;
  final String password;

  AuthLoginPrefilled({
    required this.email,
    required this.password,
  });


}

class AuthRegisterStarted extends AuthEvent {
  final String email;
  final String password;
  final String confirmPassword;

  AuthRegisterStarted({
    required this.email,
    required this.password,
    required this.confirmPassword
  });
}

class AuthAuthenticateStarted extends AuthEvent {}

class AuthLogoutStarted extends AuthEvent {}
