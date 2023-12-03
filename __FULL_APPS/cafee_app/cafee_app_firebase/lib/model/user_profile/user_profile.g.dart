// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String?,
      photo: json['photo'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      storeName: json['store_name'] as String?,
      storeAddress: json['store_address'] as String?,
      storePhoneNumber: json['store_phone_number'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'email': instance.email,
      'name': instance.name,
      'store_name': instance.storeName,
      'store_address': instance.storeAddress,
      'store_phone_number': instance.storePhoneNumber,
    };
