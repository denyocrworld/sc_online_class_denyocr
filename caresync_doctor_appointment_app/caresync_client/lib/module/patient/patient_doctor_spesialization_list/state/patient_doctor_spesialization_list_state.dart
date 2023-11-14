import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
part 'patient_doctor_spesialization_list_state.freezed.dart';

@unfreezed
class PatientDoctorSpesializationListState
    with _$PatientDoctorSpesializationListState {
  factory PatientDoctorSpesializationListState({
    @Default(0) int counter,
    @Default([]) List<Doctor> doctorList,
  }) = _PatientDoctorSpesializationListState;
}
