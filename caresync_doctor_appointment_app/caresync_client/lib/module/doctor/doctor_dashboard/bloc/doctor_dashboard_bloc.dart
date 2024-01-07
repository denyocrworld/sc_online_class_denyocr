import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import '../event/doctor_dashboard_event.dart';
import '../state/doctor_dashboard_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class DoctorDashboardBloc
    extends Bloc<DoctorDashboardEvent, DoctorDashboardState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';

import '../event/doctor_dashboard_event.dart';
import '../state/doctor_dashboard_state.dart';


class DoctorDashboardBloc
    extends Bloc<DoctorDashboardEvent, DoctorDashboardState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  DoctorDashboardBloc() : super(DoctorDashboardState()) {
    on<DoctorDashboardIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
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
