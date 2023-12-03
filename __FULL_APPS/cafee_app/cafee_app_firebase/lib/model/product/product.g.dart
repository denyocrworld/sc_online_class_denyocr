// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as String?,
      photo: json['photo'] as String?,
      productName: json['product_name'] as String?,
      productCategory: json['product_category'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      stock: (json['stock'] as num?)?.toDouble(),
      qty: json['qty'] as int?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'photo': instance.photo,
      'product_name': instance.productName,
      'product_category': instance.productCategory,
      'description': instance.description,
      'price': instance.price,
      'stock': instance.stock,
      'qty': instance.qty,
    };
