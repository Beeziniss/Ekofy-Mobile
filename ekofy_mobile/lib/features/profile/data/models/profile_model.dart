// Model does not depend on Flutter SDK widgets; keep it pure Dart.

/// UI-only mock profile model (no persistence)
/// gender can be extended later; using enum for type-safety.
enum Gender { male, female, other }

class ProfileModel {
  final String userId;
  final String displayName;
  final String email;
  final DateTime? birthDate;
  final Gender? gender;
  final DateTime createdAt;
  final String? membershipStatus; // e.g. "Premium", null => "-"
  final String? avatarImage; // asset or network path
  final String? bannerImage;

  const ProfileModel({
    required this.userId,
    required this.displayName,
    required this.email,
    required this.birthDate,
    required this.gender,
    required this.createdAt,
    required this.membershipStatus,
    required this.avatarImage,
    required this.bannerImage,
  });

  ProfileModel copyWith({
    String? userId,
    String? displayName,
    String? email,
    DateTime? birthDate,
    Gender? gender,
    DateTime? createdAt,
    String? membershipStatus,
    String? avatarImage,
    String? bannerImage,
  }) => ProfileModel(
        userId: userId ?? this.userId,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        birthDate: birthDate ?? this.birthDate,
        gender: gender ?? this.gender,
        createdAt: createdAt ?? this.createdAt,
        membershipStatus: membershipStatus ?? this.membershipStatus,
        avatarImage: avatarImage ?? this.avatarImage,
        bannerImage: bannerImage ?? this.bannerImage,
      );

  //INFO: Mock profile factory. Replace with real data mapping (e.g. from API/Repository) when backend is integrated.
  static ProfileModel mock() => ProfileModel(
        userId: 'user_12345',
        displayName: 'Jane Doe',
        email: 'jane.doe@example.com',
        birthDate: DateTime(1998, 6, 15),
        gender: Gender.female,
        createdAt: DateTime(2024, 11, 1),
        membershipStatus: 'Premium',
        avatarImage: null,
        bannerImage: null,
      );
}

String genderLabel(Gender? g) {
  switch (g) {
    case Gender.male:
      return 'Male';
    case Gender.female:
      return 'Female';
    case Gender.other:
      return 'Other';
    case null:
      return '-';
  }
}
