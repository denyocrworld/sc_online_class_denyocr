import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_crud_form_state.freezed.dart';

@unfreezed
class ProductCrudFormState with _$ProductCrudFormState {
  factory ProductCrudFormState({
    @Default("https://i.ibb.co/S32HNjD/no-image.jpg") String? photo,
    @Default(false) bool isEditMode,
    @Default(null) String? id,
    @Default(null) String? productName,
    @Default("Food") String? productCategory,
    @Default(0) double? price,
    @Default(0) double? stock,
    @Default("-") String? description,
  }) = _ProductCrudFormState;
}
