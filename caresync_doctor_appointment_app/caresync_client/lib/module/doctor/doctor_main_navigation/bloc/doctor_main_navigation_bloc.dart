import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/doctor_main_navigation_event.dart';
import '../state/doctor_main_navigation_state.dart';


class DoctorMainNavigationBloc
    extends Bloc<DoctorMainNavigationEvent, DoctorMainNavigationState>
    implements IBlocBase {
  DoctorMainNavigationBloc() : super(DoctorMainNavigationState()) {
    on<DoctorMainNavigationIncrementEvent>((event, emit) {
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
