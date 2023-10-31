import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_lab_test_list_state.freezed.dart';

@unfreezed
class PatientLabTestListState with _$PatientLabTestListState {
  factory PatientLabTestListState({
    @Default(0) int counter,
  }) = _PatientLabTestListState;
}
