// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HospitalImpl _$$HospitalImplFromJson(Map<String, dynamic> json) =>
    _$HospitalImpl(
      id: json['id'] as int?,
      photo: json['photo'],
      hospitalName: json['hospital_name'] as String?,
      hospitalAddress: json['hospital_address'] as String?,
      hospitalLocationLatitude:
          (json['hospital_location_latitude'] as num?)?.toDouble(),
      hospitalLocationLongitude:
          (json['hospital_location_longitude'] as num?)?.toDouble(),
      hospitalPhoneNumber: json['hospital_phone_number'] as String?,
      hospitalWhatsappNumber: json['hospital_whatsapp_number'] as String?,
      hospitalEmail: json['hospital_email'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$HospitalImplToJson(_$HospitalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'hospital_name': instance.hospitalName,
      'hospital_address': instance.hospitalAddress,
      'hospital_location_latitude': instance.hospitalLocationLatitude,
      'hospital_location_longitude': instance.hospitalLocationLongitude,
      'hospital_phone_number': instance.hospitalPhoneNumber,
      'hospital_whatsapp_number': instance.hospitalWhatsappNumber,
      'hospital_email': instance.hospitalEmail,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
