import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor.freezed.dart';
part 'doctor.g.dart';

@freezed
class Doctor with _$Doctor {
  factory Doctor({
    int? id,
    @JsonKey(name: 'doctor_name') String? doctorName,
    dynamic photo,
    @JsonKey(name: 'specialization_id') int? specializationId,
    @JsonKey(name: 'hospital_id') int? hospitalId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Doctor;

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}
