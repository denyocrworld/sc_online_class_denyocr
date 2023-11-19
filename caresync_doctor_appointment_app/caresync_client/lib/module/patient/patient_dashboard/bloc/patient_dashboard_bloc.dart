import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import '../event/patient_dashboard_event.dart';
import '../state/patient_dashboard_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDashboardBloc
    extends Bloc<PatientDashboardEvent, PatientDashboardState>
    with _BlocLifecycle {
  PatientDashboardBloc() : super(PatientDashboardState()) {
    on<PatientDashboardIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<PatientDashboardOnSearchEvent>((event, emit) {
      var patientDoctorListBloc = GetIt.I<PatientDoctorListBloc>();
      patientDoctorListBloc.add(PatientDoctorListGetDoctorsEvent(
        search: event.search,
      ));
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
