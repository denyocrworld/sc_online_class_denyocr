abstract class PatientDashboardEvent {}

class PatientDashboardIncrementEvent extends PatientDashboardEvent {}

class PatientDashboardOnSearchEvent extends PatientDashboardEvent {
  final String search;
  PatientDashboardOnSearchEvent({
    this.search = "",
  });
}
