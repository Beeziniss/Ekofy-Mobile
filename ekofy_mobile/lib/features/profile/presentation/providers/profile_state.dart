import 'package:ekofy_mobile/features/profile/data/models/profile_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool isEditing,
    ProfileModel? original,
    ProfileModel? edited,
  }) = _ProfileState;
}

