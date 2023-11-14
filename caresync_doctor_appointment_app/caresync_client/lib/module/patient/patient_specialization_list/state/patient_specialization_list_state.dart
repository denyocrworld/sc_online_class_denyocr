import 'package:freezed_annotation/freezed_annotation.dart';
part 'patient_specialization_list_state.freezed.dart';

@unfreezed
class PatientSpecializationListState with _$PatientSpecializationListState {
  factory PatientSpecializationListState({
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
  }) = _PatientSpecializationListState;
}
