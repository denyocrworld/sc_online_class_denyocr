import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_order_patient_data_state.freezed.dart';

@unfreezed
class PatientOrderPatientDataState with _$PatientOrderPatientDataState {
  factory PatientOrderPatientDataState({
    @Default(0) int counter,
    @Default(null) String? fullName,
    @Default(null) String? birthDate,
    @Default(null) String? gender,
    @Default(null) String? idCard,
    @Default(null) String? address,
  }) = _PatientOrderPatientDataState;
}
