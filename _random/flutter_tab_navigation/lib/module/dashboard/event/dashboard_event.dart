abstract class DashboardEvent {}

class DashboardIncrementEvent extends DashboardEvent {}

class DashboardGetBooksEvent extends DashboardEvent {
  final String? query;
  DashboardGetBooksEvent({
    this.query,
  });
}

class DashboardUpdateQueryEvent extends DashboardEvent {}
