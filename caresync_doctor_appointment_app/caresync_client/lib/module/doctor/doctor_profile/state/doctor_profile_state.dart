import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_profile_state.freezed.dart';

@unfreezed
class DoctorProfileState with _$DoctorProfileState {
  factory DoctorProfileState({
    @Default(0) int counter,
  }) = _DoctorProfileState;
}
