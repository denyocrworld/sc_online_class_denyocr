import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_order_state.freezed.dart';

@unfreezed
class PatientOrderState with _$PatientOrderState {
  factory PatientOrderState({
    @Default(0) int counter,
  }) = _PatientOrderState;
}
