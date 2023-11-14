import 'package:freezed_annotation/freezed_annotation.dart';

import 'hospital.dart';

part 'doctor_schedule.freezed.dart';
part 'doctor_schedule.g.dart';

@freezed
class DoctorSchedule with _$DoctorSchedule {
  factory DoctorSchedule({
    int? id,
    @JsonKey(name: 'hospital_id') int? hospitalId,
    @JsonKey(name: 'doctor_id') int? doctorId,
    String? day,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'consultation_fee') double? consultationFee,
    @JsonKey(name: 'patient_limit') int? patientLimit,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hospital? hospital,
  }) = _DoctorSchedule;

  factory DoctorSchedule.fromJson(Map<String, dynamic> json) =>
      _$DoctorScheduleFromJson(json);
}
