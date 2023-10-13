abstract class PatientMainNavigationEvent {}

class PatientMainNavigationIncrementEvent extends PatientMainNavigationEvent {}

class PatientMainNavigationUpdateIndexEvent extends PatientMainNavigationEvent {
  final int selectedIndex;
  PatientMainNavigationUpdateIndexEvent({
    required this.selectedIndex,
  });
}
