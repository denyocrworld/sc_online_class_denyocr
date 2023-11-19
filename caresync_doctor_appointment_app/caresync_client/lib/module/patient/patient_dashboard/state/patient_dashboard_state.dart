import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_dashboard_state.freezed.dart';

@unfreezed
class PatientDashboardState with _$PatientDashboardState {
  factory PatientDashboardState({
    @Default(0) int counter,
  }) = _PatientDashboardState;
}
