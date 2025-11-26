import 'package:ekofy_mobile/gql/queries/generated/profile_query.graphql.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';


class ProfileState {
final Query$listenersProfileQuery$listeners$items? profile;
final bool isLoading;
final bool isEditing;


final String displayName;
final String email;
final String phone;
final String birthDate; // formatted
final Enum$UserGender? gender;


const ProfileState({
this.profile,
this.isLoading = false,
this.isEditing = false,
this.displayName = '',
this.email = '',
this.phone = '',
this.birthDate = '',
this.gender,
});


ProfileState copyWith({
Query$listenersProfileQuery$listeners$items? profile,
bool? isLoading,
bool? isEditing,
String? displayName,
String? email,
String? phone,
String? birthDate,
Enum$UserGender? gender,
}) {
return ProfileState(
profile: profile ?? this.profile,
isLoading: isLoading ?? this.isLoading,
isEditing: isEditing ?? this.isEditing,
displayName: displayName ?? this.displayName,
email: email ?? this.email,
phone: phone ?? this.phone,
birthDate: birthDate ?? this.birthDate,
gender: gender ?? this.gender,
);
}
}