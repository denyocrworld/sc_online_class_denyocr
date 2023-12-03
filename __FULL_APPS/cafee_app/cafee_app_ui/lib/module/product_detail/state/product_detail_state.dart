
import 'package:freezed_annotation/freezed_annotation.dart';
part 'product_detail_state.freezed.dart';

@unfreezed
class ProductDetailState with _$ProductDetailState {
  factory ProductDetailState({
    @Default(0) int counter,
  }) = _ProductDetailState;
}
    
    