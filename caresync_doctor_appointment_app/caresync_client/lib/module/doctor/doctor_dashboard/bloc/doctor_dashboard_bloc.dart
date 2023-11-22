import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/doctor_dashboard_event.dart';
import '../state/doctor_dashboard_state.dart';


class DoctorDashboardBloc
    extends Bloc<DoctorDashboardEvent, DoctorDashboardState>
    implements IBlocBase {
  DoctorDashboardBloc() : super(DoctorDashboardState()) {
    on<DoctorDashboardIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
