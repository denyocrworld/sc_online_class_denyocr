
import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_state.freezed.dart';

@unfreezed
class OrderState with _$OrderState {
  factory OrderState({
    @Default(0) int counter,
  }) = _OrderState;
}
    
    