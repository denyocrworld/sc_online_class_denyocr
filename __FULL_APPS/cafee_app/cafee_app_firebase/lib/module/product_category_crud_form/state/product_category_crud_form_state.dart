import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_category_crud_form_state.freezed.dart';

@unfreezed
class ProductCategoryCrudFormState with _$ProductCategoryCrudFormState {
  factory ProductCategoryCrudFormState({
    @Default(0) int counter,
    @Default(false) bool isEditMode,
    @Default(null) String? id,
    @Default(null) String? productCategoryName,
  }) = _ProductCategoryCrudFormState;
}
