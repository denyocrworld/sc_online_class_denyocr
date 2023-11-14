import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_dashboard_state.freezed.dart';

@unfreezed
class DoctorDashboardState with _$DoctorDashboardState {
  factory DoctorDashboardState({
    @Default(0) int counter,
  }) = _DoctorDashboardState;
}
