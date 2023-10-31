import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_main_navigation_state.freezed.dart';

@unfreezed
class DoctorMainNavigationState with _$DoctorMainNavigationState {
  factory DoctorMainNavigationState({
    @Default(0) int counter,
  }) = _DoctorMainNavigationState;
}
