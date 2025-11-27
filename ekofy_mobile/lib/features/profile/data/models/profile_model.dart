// // Model does not depend on Flutter SDK widgets; keep it pure Dart.

// // import 'package:freezed_annotation/freezed_annotation.dart';

// // UI-only mock profile model (no persistence)
// // gender can be extended later; using enum for type-safety.
// enum Gender { male, female, other }

// class ProfileModel {
//   final String id;
//   final String userId;
//   final String displayName;
//   final String? avatarImage;
//   final String? bannerImage;
//   final int? followerCount;
//   final int? followingCount;
//   final bool? isVisible;
//   final bool? isVerified;
//   final String email;
//   // final Gender? gender;
//   // final DateTime? birthDate;
//   // final String? phoneNumber;
//   // final String? status;
//   // final DateTime? lastLoginAt;
//   // final DateTime? createdAt;

//   const ProfileModel({
//     required this.id,
//     required this.userId,
//     required this.displayName,
//     this.avatarImage,
//     this.bannerImage,
//     this.followerCount,
//     this.followingCount,
//     this.isVisible,
//     this.isVerified,
//     required this.email,
//     // this.gender,
//     // this.birthDate,
//     // this.phoneNumber,
//     // this.status,
//     // this.lastLoginAt,
//     // this.createdAt,
//   });

//   ProfileModel copyWith({
//     String? id,
//     String? userId,
//     String? displayName,
//     String? avatarImage,
//     String? bannerImage,
//     int? followerCount,
//     int? followingCount,
//     bool? isVisible,
//     bool? isVerified,
//     String? email,
//     Gender? gender,
//     // DateTime? birthDate,
//     // String? phoneNumber,
//     // String? status,
//     // DateTime? lastLoginAt,
//     // DateTime? createdAt,
//   }) => ProfileModel(
//     id: id ?? this.id,
//     userId: userId ?? this.userId,
//     displayName: displayName ?? this.displayName,
//     avatarImage: avatarImage ?? this.avatarImage,
//     bannerImage: bannerImage ?? this.bannerImage,
//     followerCount: followerCount ?? this.followerCount,
//     followingCount: followingCount ?? this.followingCount,
//     isVisible: isVisible ?? this.isVisible,
//     isVerified: isVerified ?? this.isVerified,
//     email: email ?? this.email,
//     // gender: gender ?? this.gender,
//     // birthDate: birthDate ?? this.birthDate,
//     // phoneNumber: phoneNumber ?? this.phoneNumber,
//     // status: status ?? this.status,
//     // lastLoginAt: lastLoginAt ?? this.lastLoginAt,
//     // createdAt: createdAt ?? this.createdAt,
//   );

//   //INFO: Mock profile factory. Replace with real data mapping (e.g. from API/Repository) when backend is integrated.
//   // static ProfileModel mock() => ProfileModel(
//   //   userId: 'user_12345',
//   //   displayName: 'Jane Doe',
//   //   email: 'jane.doe@example.com',
//   //   birthDate: DateTime(1998, 6, 15),
//   //   gender: Gender.female,
//   //   createdAt: DateTime(2024, 11, 1),
//   //   membershipStatus: 'Premium',
//   //   avatarImage: null,
//   //   bannerImage: null,
//   // );

//   static ProfileModel fromJson(Map<String, dynamic> json) {
//     final user = json['user'] ?? {};
//     return ProfileModel(
//       id: json['id'],
//       userId: json['userId'],
//       displayName: json['displayName'],
//       avatarImage: json['avatarImage'],
//       bannerImage: json['bannerImage'],
//       followerCount: json['followerCount'],
//       followingCount: json['followingCount'],
//       isVisible: json['isVisible'],
//       isVerified: json['isVerified'],
//       email: user['email'], //user['email'],
//       // gender: user['gender'],
//       // != null
//       //     ? Gender.values.byName(user['gender'])
//       //     : null,
//       // birthDate: user['birthDate'],
//       // // != null
//       // //     ? DateTime.parse(user['birthDate'])
//       // //     : null,
//       // phoneNumber: user['phoneNumber'],
//       // status: user['status'],
//       // lastLoginAt: user['lastLoginAt'] != null
//       //     ? DateTime.parse(user['lastLoginAt'])
//       //     : null,
//       // createdAt: user['createdAt'] != null
//       //     ? DateTime.parse(user['createdAt'])
//       //     : null,
//     );
//   }
// }

// String genderLabel(Gender? g) {
//   switch (g) {
//     case Gender.male:
//       return 'Male';
//     case Gender.female:
//       return 'Female';
//     case Gender.other:
//       return 'Other';
//     case null:
//       return '-';
//   }
// }

import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

@freezed
sealed class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    required String userId,
    required String displayName,
    required String email,
    String? phoneNumber,
    DateTime? birthDate,
    Enum$UserGender? gender,
    required bool isVerified,
    String? avatarImage,
    String? bannerImage,
    required int followerCount,
    required int followingCount,
    DateTime? createdAt,
    DateTime? lastLoginAt,
  }) = _ProfileModel;

  factory ProfileModel.fromGraphql(dynamic profile, {required String userId}) {
    final user = profile.user?.first;

    return ProfileModel(
      userId: userId,
      displayName: profile.displayName ?? '',
      email: user?.email ?? '',
      phoneNumber: user?.phoneNumber,
      birthDate: user?.birthDate,
      gender: user?.gender,
      isVerified: profile.isVerified ?? false,
      avatarImage: profile.avatarImage,
      bannerImage: profile.bannerImage,
      followerCount: profile.followerCount ?? 0,
      followingCount: profile.followingCount ?? 0,
      createdAt: user?.createdAt,
      lastLoginAt: user?.lastLoginAt,
    );
  }

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
