import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

//CMD: dart run build_runner build --delete-conflicting-outputs

@freezed
sealed class LoginResponse with _$LoginResponse {
  const factory LoginResponse(
    String? message,
    LoginSuccessResult? result,
    //info: for login fail
    String? detail,
  ) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
sealed class LoginSuccessResult with _$LoginSuccessResult {
  const factory LoginSuccessResult({
    required String accessToken,
    required String refreshToken,
    required String userId,
    required String listenerId,
    required String role,
    required String avatarImage,
  }) = _LoginSuccessResult;

  factory LoginSuccessResult.fromJson(Map<String, dynamic> json) =>
      _$LoginSuccessResultFromJson(json);
}

// @freezed
// sealed class LoginFailureResponse with _$LoginFailureResponse {
//   const factory LoginFailureResponse({required String detail}) =
//       _LoginFailureResponse;

//   factory LoginFailureResponse.fromJson(Map<String, dynamic> json) =>
//       _$LoginFailureResponseFromJson(json);
// }
