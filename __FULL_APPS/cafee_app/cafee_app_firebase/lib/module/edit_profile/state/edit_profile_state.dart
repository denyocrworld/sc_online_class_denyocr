import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/user_profile/user_profile.dart';
part 'edit_profile_state.freezed.dart';

@unfreezed
class EditProfileState with _$EditProfileState {
  factory EditProfileState({
    @Default(0) int counter,
    @Default(null) UserProfile? userProfile,
  }) = _EditProfileState;
}
