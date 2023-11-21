import 'package:hyper_ui/model/doctor/doctor.dart';

abstract class PatientDoctorDetailEvent {}

class PatientDoctorDetailIncrementEvent extends PatientDoctorDetailEvent {}

class PatientDoctorDetailSetDoctorEvent extends PatientDoctorDetailEvent {
  final Doctor doctor;
  PatientDoctorDetailSetDoctorEvent({
    required this.doctor,
  });
}
