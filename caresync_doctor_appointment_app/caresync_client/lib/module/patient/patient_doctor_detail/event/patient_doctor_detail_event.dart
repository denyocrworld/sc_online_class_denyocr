<<<<<<< HEAD
abstract class PatientDoctorDetailEvent {}

class PatientDoctorDetailIncrementEvent extends PatientDoctorDetailEvent {}
=======
import 'package:hyper_ui/model/doctor/doctor.dart';

abstract class PatientDoctorDetailEvent {}

class PatientDoctorDetailIncrementEvent extends PatientDoctorDetailEvent {}

class PatientDoctorDetailSetDoctorEvent extends PatientDoctorDetailEvent {
  final Doctor doctor;
  PatientDoctorDetailSetDoctorEvent({
    required this.doctor,
  });
}
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
