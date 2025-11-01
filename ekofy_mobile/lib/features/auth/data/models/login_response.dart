import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

//CMD: dart run build_runner build --delete-conflicting-outputs

@freezed
sealed class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String message,
    required LoginResult result,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
sealed class LoginResult with _$LoginResult {
  const factory LoginResult({
    required String accessToken,
    required String refreshToken,
    required String userId,
    required String listenerId,
    required String role,
    required String avatarImage,
  }) = _LoginResult;

  factory LoginResult.fromJson(Map<String, dynamic> json) =>
      _$LoginResultFromJson(json);
}
