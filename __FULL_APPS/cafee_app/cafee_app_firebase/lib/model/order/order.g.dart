// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderImpl _$$OrderImplFromJson(Map<String, dynamic> json) => _$OrderImpl(
      id: json['id'] as String?,
      createdAt: json['created_at'] as String?,
      paymentMethod: json['payment_method'] as String?,
      status: json['status'] as String?,
      items: json['items'] as List<dynamic>?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$$OrderImplToJson(_$OrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'payment_method': instance.paymentMethod,
      'status': instance.status,
      'items': instance.items,
      'total': instance.total,
    };
