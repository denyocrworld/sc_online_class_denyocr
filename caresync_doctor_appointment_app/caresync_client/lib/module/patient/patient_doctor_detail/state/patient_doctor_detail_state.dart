import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
part 'patient_doctor_detail_state.freezed.dart';

@unfreezed
class PatientDoctorDetailState with _$PatientDoctorDetailState {
  factory PatientDoctorDetailState({
    @Default(0) int counter,
    @Default(null) Doctor? doctor,
    @Default(null) String? startTime,
    @Default(null) String? endTime,
  }) = _PatientDoctorDetailState;
}
