// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpecializationImpl _$$SpecializationImplFromJson(Map<String, dynamic> json) =>
    _$SpecializationImpl(
      id: json['id'] as int?,
      specializationName: json['specialization_name'] as String?,
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );

Map<String, dynamic> _$$SpecializationImplToJson(
        _$SpecializationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'specialization_name': instance.specializationName,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
