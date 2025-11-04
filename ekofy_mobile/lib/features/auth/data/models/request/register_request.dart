class RegisterRequest {
  final String email;
  final String password;
  final String confirmPassword;
  final String fullName;
  final DateTime birthDate;
  final String gender;
  final String displayName;

  RegisterRequest({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.fullName,
    required this.birthDate,
    required this.gender,
    required this.displayName,
  });
}
