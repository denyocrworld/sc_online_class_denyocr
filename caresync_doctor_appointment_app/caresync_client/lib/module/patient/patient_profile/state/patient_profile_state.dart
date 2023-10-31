import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_profile_state.freezed.dart';

@unfreezed
class PatientProfileState with _$PatientProfileState {
  factory PatientProfileState({
    @Default(0) int counter,
    @Default(false) bool logoutSuccess,
  }) = _PatientProfileState;
}
