
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_list_state.freezed.dart';

@unfreezed
class OrderListState with _$OrderListState {
  factory OrderListState({
    @Default(0) int counter,
  }) = _OrderListState;
}
    
    