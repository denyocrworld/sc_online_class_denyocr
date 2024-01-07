import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_category_crud_list_state.freezed.dart';

@unfreezed
class ProductCategoryCrudListState with _$ProductCategoryCrudListState {
  factory ProductCategoryCrudListState({
    @Default(0) int counter,
    @Default("") String search,
  }) = _ProductCategoryCrudListState;
}
