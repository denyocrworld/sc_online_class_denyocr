
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_profile_state.freezed.dart';

@unfreezed
class EditProfileState with _$EditProfileState {
  factory EditProfileState({
    @Default(0) int counter,
  }) = _EditProfileState;
}
    
    