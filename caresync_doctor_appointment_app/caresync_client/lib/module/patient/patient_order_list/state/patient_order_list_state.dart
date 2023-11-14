import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/order/order.dart';
part 'patient_order_list_state.freezed.dart';

@unfreezed
class PatientOrderListState with _$PatientOrderListState {
  factory PatientOrderListState({
    @Default(0) int counter,
    @Default([]) List<Order> orders,
  }) = _PatientOrderListState;
}
