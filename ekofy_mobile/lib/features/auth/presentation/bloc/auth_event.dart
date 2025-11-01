class AuthEvent {}

class AuthLoginStarted extends AuthEvent {
  final String email;
  final String password;

  AuthLoginStarted({required this.email, required this.password});
}

class AuthRegisterStarted extends AuthEvent {}
