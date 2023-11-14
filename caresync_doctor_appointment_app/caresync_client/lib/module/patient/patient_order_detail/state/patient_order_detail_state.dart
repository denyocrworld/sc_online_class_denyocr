import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_order_detail_state.freezed.dart';

@unfreezed
class PatientOrderDetailState with _$PatientOrderDetailState {
  factory PatientOrderDetailState({
    @Default(0) int counter,
  }) = _PatientOrderDetailState;
}
