class VerifyOtpRequest {
  final String email;
  final String providedOtp;

  VerifyOtpRequest({required this.email, required this.providedOtp});

  // Map<String, dynamic> toJson() {
  //   return {
  //     'email': email,
  //     'providedOtp': providedOtp,
  //   };
  // }
}
