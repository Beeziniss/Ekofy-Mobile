// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      gender: json['gender'] == null
          ? null
          : Enum$UserGender.fromJson(json['gender'] as String),
      isVerified: json['isVerified'] as bool,
      avatarImage: json['avatarImage'] as String?,
      bannerImage: json['bannerImage'] as String?,
      followerCount: (json['followerCount'] as num).toInt(),
      followingCount: (json['followingCount'] as num).toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'birthDate': instance.birthDate?.toIso8601String(),
      'gender': instance.gender,
      'isVerified': instance.isVerified,
      'avatarImage': instance.avatarImage,
      'bannerImage': instance.bannerImage,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
    };
