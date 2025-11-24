class LoginRequest {
  final String email;
  final String password;
  final bool isMobile;

  const LoginRequest({
    required this.email,
    required this.password,
    required this.isMobile,
  });
}
