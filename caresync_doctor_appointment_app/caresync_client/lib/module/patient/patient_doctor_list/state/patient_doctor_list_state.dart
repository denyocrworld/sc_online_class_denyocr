import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
part 'patient_doctor_list_state.freezed.dart';

@unfreezed
class PatientDoctorListState with _$PatientDoctorListState {
  factory PatientDoctorListState({
    @Default(0) int counter,
    @Default([
      'Cardiologist',
      'Dermatologist',
      'Gastroenterologist',
      'Neurologist',
      'Ophthalmologist',
      'Orthopedic Surgeon',
      'Otolaryngologist (ENT Specialist)',
      'Pediatrician',
      'Psychiatrist',
      'Pulmonologist',
      'Rheumatologist',
      'Endocrinologist',
      'Gynecologist',
      'Urologist',
      'Nephrologist',
      'Hematologist',
      'Allergist/Immunologist',
      'Infectious Disease Specialist',
      'Oncologist',
      'Geriatrician',
      'Pain Management Specialist',
      'Sports Medicine Physician',
      'Neonatologist',
      'Plastic Surgeon',
      'Anesthesiologist',
    ])
    List categories,
    @Default([
      // {
      //   'photo':
      //       'https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      //   'doctor_name': 'Dr. Amanda Smith',
      //   'specialization': 'Cardiologist',
      //   'address': '123 Main Street, Cityville',
      //   'location_in_km': 5.2,
      //   'patient_count': 120,
      //   'next_schedule': '2023-10-20 09:30 AM',
      // },
      // {
      //   'photo':
      //       'https://images.unsplash.com/photo-1537368910025-700350fe46c7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      //   'doctor_name': 'Dr. John Doe',
      //   'specialization': 'Dermatologist',
      //   'address': '456 Elm Street, Townsville',
      //   'location_in_km': 7.5,
      //   'patient_count': 90,
      //   'next_schedule': '2023-10-22 11:00 AM',
      // },
      // {
      //   'photo':
      //       'https://images.unsplash.com/photo-1559839734-2b71ea197ec2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
      //   'doctor_name': 'Dr. Lisa Johnson',
      //   'specialization': 'Pediatrician',
      //   'address': '789 Oak Avenue, Villageland',
      //   'location_in_km': 3.8,
      //   'patient_count': 150,
      //   'next_schedule': '2023-10-18 10:15 AM',
      // },
    ])
    List<Doctor> doctorList,
    @Default("") String search,
  }) = _PatientDoctorListState;
}
