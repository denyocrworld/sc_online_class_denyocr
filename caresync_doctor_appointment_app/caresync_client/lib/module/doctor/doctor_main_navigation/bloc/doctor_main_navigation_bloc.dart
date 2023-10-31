import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/doctor_main_navigation_event.dart';
import '../state/doctor_main_navigation_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class DoctorMainNavigationBloc
    extends Bloc<DoctorMainNavigationEvent, DoctorMainNavigationState>
    with _BlocLifecycle {
  DoctorMainNavigationBloc() : super(DoctorMainNavigationState()) {
    on<DoctorMainNavigationIncrementEvent>((event, emit) {
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
