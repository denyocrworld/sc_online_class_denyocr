import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/doctor_dashboard_event.dart';
import '../state/doctor_dashboard_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class DoctorDashboardBloc
    extends Bloc<DoctorDashboardEvent, DoctorDashboardState>
    with _BlocLifecycle {
  DoctorDashboardBloc() : super(DoctorDashboardState()) {
    on<DoctorDashboardIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
