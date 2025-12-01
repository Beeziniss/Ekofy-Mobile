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
      state = AsyncValue.data(current.copyWith(isEditing: !current.isEditing));
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
        current.copyWith(edited: current.original, isEditing: false),
      );
    });
  }
}
