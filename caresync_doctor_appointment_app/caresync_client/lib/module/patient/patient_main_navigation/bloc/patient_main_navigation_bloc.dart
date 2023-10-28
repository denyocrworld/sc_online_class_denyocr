import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_main_navigation_event.dart';
import '../state/patient_main_navigation_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientMainNavigationBloc
    extends Bloc<PatientMainNavigationEvent, PatientMainNavigationState>
    with _BlocLifecycle {
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
