import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_form_state.freezed.dart';

@unfreezed
class ProductFormState with _$ProductFormState {
  factory ProductFormState({
    @Default(0) int counter,
    @Default(null) int? id,
    @Default(null) String? photo,
    @Default(null) String? productName,
    @Default(null) double? price,
    @Default("Makanan") String? categoryName,
    @Default(null) Map? item,
    @Default(false) bool isEditMode,
  }) = _ProductFormState;
}
