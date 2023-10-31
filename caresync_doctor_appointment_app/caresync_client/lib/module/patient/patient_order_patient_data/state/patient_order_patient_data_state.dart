import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_order_patient_data_state.freezed.dart';

@unfreezed
class PatientOrderPatientDataState with _$PatientOrderPatientDataState {
  factory PatientOrderPatientDataState({
    @Default(0) int counter,
  }) = _PatientOrderPatientDataState;
}
