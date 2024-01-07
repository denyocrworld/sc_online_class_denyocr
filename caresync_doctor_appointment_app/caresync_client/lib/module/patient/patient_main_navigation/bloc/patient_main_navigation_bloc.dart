import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import '../event/patient_main_navigation_event.dart';
import '../state/patient_main_navigation_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientMainNavigationBloc
    extends Bloc<PatientMainNavigationEvent, PatientMainNavigationState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_main_navigation_event.dart';
import '../state/patient_main_navigation_state.dart';


class PatientMainNavigationBloc
    extends Bloc<PatientMainNavigationEvent, PatientMainNavigationState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientMainNavigationBloc() : super(PatientMainNavigationState()) {
    on<PatientMainNavigationIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientMainNavigationUpdateIndexEvent>((event, emit) {
      state.selectedIndex = event.selectedIndex;
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
