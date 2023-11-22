
import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_list_state.freezed.dart';

@unfreezed
class CustomerListState with _$CustomerListState {
  factory CustomerListState({
    @Default(0) int counter,
  }) = _CustomerListState;
}
    
    