class RegisterResponse {
  final String? detail;

  RegisterResponse({this.detail});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) {
    return RegisterResponse(detail: json['detail']);
  }
}
