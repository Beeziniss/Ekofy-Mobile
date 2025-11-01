// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    _LoginResponse(
      message: json['message'] as String,
      result: LoginResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResponseToJson(_LoginResponse instance) =>
    <String, dynamic>{'message': instance.message, 'result': instance.result};

_LoginResult _$LoginResultFromJson(Map<String, dynamic> json) => _LoginResult(
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
  userId: json['userId'] as String,
  listenerId: json['listenerId'] as String,
  role: json['role'] as String,
  avatarImage: json['avatarImage'] as String,
);

Map<String, dynamic> _$LoginResultToJson(_LoginResult instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userId': instance.userId,
      'listenerId': instance.listenerId,
      'role': instance.role,
      'avatarImage': instance.avatarImage,
    };
