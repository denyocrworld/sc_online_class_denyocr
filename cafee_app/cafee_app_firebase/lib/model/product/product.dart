import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@unfreezed
class Product with _$Product {
  factory Product({
    String? id,
    String? photo,
    @JsonKey(name: 'product_name') String? productName,
    @JsonKey(name: 'product_category') String? productCategory,
    String? description,
    double? price,
    double? stock,
    int? qty,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
