import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/model/doctor/doctor_schedule.dart';
part 'patient_doctor_detail_state.freezed.dart';

@unfreezed
class PatientDoctorDetailState with _$PatientDoctorDetailState {
  factory PatientDoctorDetailState({
    @Default(0) int counter,
    @Default(null) DoctorSchedule? schedule,
    @Default(null) Doctor? doctor,
    @Default(null) String? startTime,
    @Default(null) String? endTime,
  }) = _PatientDoctorDetailState;
}
