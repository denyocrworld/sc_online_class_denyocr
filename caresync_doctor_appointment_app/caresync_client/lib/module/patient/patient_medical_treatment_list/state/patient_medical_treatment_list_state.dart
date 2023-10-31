import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_medical_treatment_list_state.freezed.dart';

@unfreezed
class PatientMedicalTreatmentListState with _$PatientMedicalTreatmentListState {
  factory PatientMedicalTreatmentListState({
    @Default(0) int counter,
  }) = _PatientMedicalTreatmentListState;
}
