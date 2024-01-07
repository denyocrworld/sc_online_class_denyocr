import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
<<<<<<< HEAD
import '../event/patient_dashboard_event.dart';
import '../state/patient_dashboard_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDashboardBloc
    extends Bloc<PatientDashboardEvent, PatientDashboardState>
    with _BlocLifecycle {
=======



class PatientDashboardBloc
    extends Bloc<PatientDashboardEvent, PatientDashboardState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
<<<<<<< HEAD
    super.initState();
=======
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }

  @override
  void dispose() {
    //dispose event
<<<<<<< HEAD
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
=======
  }

  @override
  void ready() {
    //ready event
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }
}
