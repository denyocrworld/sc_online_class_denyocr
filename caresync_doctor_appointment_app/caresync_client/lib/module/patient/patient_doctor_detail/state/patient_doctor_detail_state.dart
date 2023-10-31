import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_doctor_detail_state.freezed.dart';

@unfreezed
class PatientDoctorDetailState with _$PatientDoctorDetailState {
  factory PatientDoctorDetailState({
    @Default(0) int counter,
  }) = _PatientDoctorDetailState;
}
