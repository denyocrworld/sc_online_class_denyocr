import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_crud_list_state.freezed.dart';

@unfreezed
class ProductCrudListState with _$ProductCrudListState {
  factory ProductCrudListState({
    @Default(0) int counter,
    @Default("") String search,
  }) = _ProductCrudListState;
}
