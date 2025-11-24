// ignore_for_file: public_member_api_docs, sort_constructors_first
class LogoutResponse {
  String message;
  LogoutResponse({required this.message});

  factory LogoutResponse.fromJson(Map<String, dynamic> json) {
    return LogoutResponse(message: json['message']);
  }
}
