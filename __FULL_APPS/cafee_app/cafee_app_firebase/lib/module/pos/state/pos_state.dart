import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/product/product.dart';
part 'pos_state.freezed.dart';

@unfreezed
class PosState with _$PosState {
  factory PosState({
    @Default(0) int counter,
    @Default([]) List<Product> products,
    @Default("") String search,
  }) = _PosState;
}
