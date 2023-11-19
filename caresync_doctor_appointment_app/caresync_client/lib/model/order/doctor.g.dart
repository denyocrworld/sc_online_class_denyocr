// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorImpl _$$DoctorImplFromJson(Map<String, dynamic> json) => _$DoctorImpl(
      id: json['id'] as int?,
      doctorName: json['doctor_name'] as String?,
      photo: json['photo'],
      description: json['description'] as String?,
      medicalTreatment: json['medical_treatment'] as String?,
      practicalExperience: json['practical_experience'] as String?,
      educationalBackground: json['educational_background'] as String?,
      specializationId: json['specialization_id'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DoctorImplToJson(_$DoctorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'doctor_name': instance.doctorName,
      'photo': instance.photo,
      'description': instance.description,
      'medical_treatment': instance.medicalTreatment,
      'practical_experience': instance.practicalExperience,
      'educational_background': instance.educationalBackground,
      'specialization_id': instance.specializationId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
