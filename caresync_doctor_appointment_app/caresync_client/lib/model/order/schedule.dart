import 'package:freezed_annotation/freezed_annotation.dart';

import 'hospital.dart';

part 'schedule.freezed.dart';
part 'schedule.g.dart';

@freezed
class Schedule with _$Schedule {
  factory Schedule({
    int? id,
    @JsonKey(name: 'hospital_id') int? hospitalId,
    @JsonKey(name: 'doctor_id') int? doctorId,
    String? day,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'consultation_fee') int? consultationFee,
    @JsonKey(name: 'patient_limit') int? patientLimit,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    Hospital? hospital,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}
