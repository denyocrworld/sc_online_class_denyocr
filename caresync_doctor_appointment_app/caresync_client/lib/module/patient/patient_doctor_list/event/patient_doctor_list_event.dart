abstract class PatientDoctorListEvent {}

class PatientDoctorListIncrementEvent extends PatientDoctorListEvent {}

class PatientDoctorListGetDoctorsEvent extends PatientDoctorListEvent {
  final String search;
  PatientDoctorListGetDoctorsEvent({
    this.search = "",
  });
}
