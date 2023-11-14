// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorScheduleImpl _$$DoctorScheduleImplFromJson(Map<String, dynamic> json) =>
    _$DoctorScheduleImpl(
      id: json['id'] as int?,
      hospitalId: json['hospital_id'] as int?,
      doctorId: json['doctor_id'] as int?,
      day: json['day'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      consultationFee: (json['consultation_fee'] as num?)?.toDouble(),
      patientLimit: json['patient_limit'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      hospital: json['hospital'] == null
          ? null
          : Hospital.fromJson(json['hospital'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DoctorScheduleImplToJson(
        _$DoctorScheduleImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'hospital_id': instance.hospitalId,
      'doctor_id': instance.doctorId,
      'day': instance.day,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'consultation_fee': instance.consultationFee,
      'patient_limit': instance.patientLimit,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'hospital': instance.hospital,
    };
