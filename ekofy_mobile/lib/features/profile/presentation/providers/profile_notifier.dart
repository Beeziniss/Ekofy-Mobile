// import 'dart:developer';
// import 'package:ekofy_mobile/core/configs/graphql_client_provider.dart';
// import 'package:ekofy_mobile/core/utils/helper.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod/legacy.dart';
// import 'package:intl/intl.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'profile_state.dart';
// import 'package:ekofy_mobile/gql/queries/generated/profile_query.graphql.dart';
// import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';

// class ProfileNotifier extends StateNotifier<ProfileState> {
//   final GraphQLClient client;
//   final Ref ref;

//   ProfileNotifier(this.ref, this.client) : super(const ProfileState()) {
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     state = state.copyWith(isLoading: true);
//     final payload = await Helper.decodeJwtUnverified(ref);
//     final options = Options$Query$listenersProfileQuery(
//       variables: Variables$Query$listenersProfileQuery(
//         userId: payload!['userId'],
//       ),
//     );

//     final result = await client.query(options);
//     if (result.hasException) {
//       log('Profile fetch error: ${result.exception}');
//       state = state.copyWith(isLoading: false);
//       return;
//     }

//     final data = result.parsedData?.listeners?.items?.first;
//     if (data != null) {
//       final user = data.user.firstOrNull;
//       final formattedBirth = _formatDate(user?.birthDate);

//       state = state.copyWith(
//         profile: data,
//         isLoading: false,
//         displayName: data.displayName,
//         email: user?.email ?? '',
//         phone: user?.phoneNumber ?? '',
//         birthDate: formattedBirth,
//         gender: user?.gender,
//       );
//     } else {
//       state = state.copyWith(isLoading: false);
//     }
//   }

//   void toggleEditing() {
//     state = state.copyWith(isEditing: !state.isEditing);
//   }

//   void updateField({
//     String? name,
//     String? email,
//     String? phone,
//     String? birth,
//     Enum$UserGender? gender,
//   }) {
//     state = state.copyWith(
//       displayName: name ?? state.displayName,
//       email: email ?? state.email,
//       phone: phone ?? state.phone,
//       birthDate: birth ?? state.birthDate,
//       gender: gender ?? state.gender,
//     );
//   }

//   Future<void> submitUpdate() async {
//     final inputDate = state.birthDate;
//     DateTime? parsedDate;
//     try {
//       parsedDate = DateFormat('dd-MM-yyyy').parseStrict(inputDate).toUtc();
//     } catch (e) {
//       log('Invalid date: $e');
//     }
//     final formattedDate = parsedDate != null
//         ? DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(parsedDate)
//         : null;

//     final mutation =
//         '''
//       mutation {
//         updateListenerProfile(updateListenerRequest: {
//           displayName: "${state.displayName.replaceAll('"', '\\"')}"
//           phoneNumber: ${state.phone == '' ? null : state.phone.replaceAll('"', '\\"')}
//           birthDate: "$formattedDate"
//           gender: ${state.gender?.toString().split('.').last ?? 'null'}
//         })
//       }
//     ''';

//     final result = await client.query(QueryOptions(document: gql(mutation)));

//     if (result.hasException) {
//       log('Update error: ${result.exception}');
//     }
//   }

//   String _formatDate(DateTime? date) {
//     if (date == null) return '';
//     return DateFormat('dd-MM-yyyy').format(date);
//   }
// }

// final profileProvider = StateNotifierProvider<ProfileNotifier, ProfileState>((
//   ref,
// ) {
//   final client = ref.watch(graphqlClientProvider);
//   return ProfileNotifier(ref, client);
// });


// import 'dart:developer';
// import 'package:ekofy_mobile/features/profile/data/datasource/profile_api_datasource.dart';
// import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod/legacy.dart';
// import 'profile_state.dart';

// //============
// part 'profile_notifier.g.dart';
// class ProfileNotifier extends StateNotifier<ProfileState> {
//   final ProfileApiDatasource api;
//   final Ref ref;

//   ProfileNotifier(this.ref, this.api) : super(const ProfileState()) {
//     fetchProfile();
//   }

//   Future<void> fetchProfile() async {
//     state = state.copyWith(isLoading: true);
//     try {
//       final profile = await api.fetchProfile();
//       state = state.copyWith(
//         isLoading: false,
//         original: profile,
//         edited: profile,
//       );
//     } catch (e) {
//       log("Fetch profile error: $e");
//       state = state.copyWith(isLoading: false);
//     }
//   }

//   void toggleEditing() {
//     state = state.copyWith(isEditing: !state.isEditing);
//   }

//   void updateField({
//     String? name,
//     String? phone,
//     DateTime? birthDate,
//     Enum$UserGender? gender,
//   }) {
//     final edited = state.edited;
//     if (edited == null) return;

//     state = state.copyWith(
//       edited: edited.copyWith(
//         displayName: name ?? edited.displayName,
//         phoneNumber: phone ?? edited.phoneNumber,
//         birthDate: birthDate ?? edited.birthDate,
//         gender: gender ?? edited.gender,
//       ),
//     );
//   }

//   Future<void> submitUpdate() async {
//     final original = state.original;
//     final edited = state.edited;

//     if (original == null || edited == null) return;

//     try {
//       await api.updateProfile(original: original, edited: edited);
//       state = state.copyWith(
//         original: edited,
//         isEditing: false,
//       );
//     } catch (e) {
//       log("Update error: $e");
//     }
//   }
// }

import 'dart:developer';
import 'package:ekofy_mobile/core/di/injector.dart';
import 'package:ekofy_mobile/features/profile/data/datasource/profile_api_datasource.dart';
import 'package:ekofy_mobile/gql/generated/schema.graphql.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'profile_state.dart';

part 'profile_notifier.g.dart';

@riverpod
class Profile extends _$Profile {
  ProfileApiDatasource get _api => ref.read(profileApiDatasourceProvider);

  @override
  FutureOr<ProfileState> build() async {
    // Fetch profile ngay khi provider được khởi tạo
    return await _fetchProfile();
  }

  Future<ProfileState> _fetchProfile() async {
    try {
      final profile = await _api.fetchProfile();
      return ProfileState(
        isLoading: false,
        original: profile,
        edited: profile,
        isEditing: false,
      );
    } catch (e) {
      log("Fetch profile error: $e");
      rethrow; // Để AsyncValue.error có thể catch
    }
  }

  // Refresh profile (public method)
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchProfile());
  }

  void toggleEditing() {
    state.whenData((current) {
      state = AsyncValue.data(
        current.copyWith(isEditing: !current.isEditing),
      );
    });
  }

  void updateField({
    String? name,
    String? phone,
    DateTime? birthDate,
    Enum$UserGender? gender,
  }) {
    state.whenData((current) {
      final edited = current.edited;
      if (edited == null) return;

      state = AsyncValue.data(
        current.copyWith(
          edited: edited.copyWith(
            displayName: name ?? edited.displayName,
            phoneNumber: phone ?? edited.phoneNumber,
            birthDate: birthDate ?? edited.birthDate,
            gender: gender ?? edited.gender,
          ),
        ),
      );
    });
  }

  Future<void> submitUpdate() async {
    await state.whenData((current) async {
      final original = current.original;
      final edited = current.edited;
      
      if (original == null || edited == null) return;

      try {
        // Set loading state
        state = AsyncValue.data(current.copyWith(isLoading: true));

        await _api.updateProfile(original: original, edited: edited);

        // Update success
        state = AsyncValue.data(
          current.copyWith(
            original: edited,
            isEditing: false,
            isLoading: false,
          ),
        );
      } catch (e) {
        log("Update error: $e");
        
        // Revert loading state nhưng giữ error
        state = AsyncValue.data(current.copyWith(isLoading: false));
        
        // Có thể throw error để UI handle
        rethrow;
      }
    }).value;
  }

  // Helper method để cancel editing
  void cancelEditing() {
    state.whenData((current) {
      state = AsyncValue.data(
        current.copyWith(
          edited: current.original,
          isEditing: false,
        ),
      );
    });
  }
}