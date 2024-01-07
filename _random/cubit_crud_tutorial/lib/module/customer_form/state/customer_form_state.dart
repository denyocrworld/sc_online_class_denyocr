
import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_form_state.freezed.dart';

@unfreezed
class CustomerFormState with _$CustomerFormState {
  factory CustomerFormState({
    @Default(0) int counter,
  }) = _CustomerFormState;
}
    
    