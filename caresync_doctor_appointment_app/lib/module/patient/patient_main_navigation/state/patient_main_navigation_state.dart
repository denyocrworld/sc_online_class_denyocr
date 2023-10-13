import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_main_navigation_state.freezed.dart';

@unfreezed
class PatientMainNavigationState with _$PatientMainNavigationState {
  factory PatientMainNavigationState({
    @Default(0) int counter,
    @Default(0) int selectedIndex,
  }) = _PatientMainNavigationState;
}
