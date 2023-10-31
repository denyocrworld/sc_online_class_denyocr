import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/doctor_profile_event.dart';
import '../state/doctor_profile_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class DoctorProfileBloc extends Bloc<DoctorProfileEvent, DoctorProfileState>
    with _BlocLifecycle {
  DoctorProfileBloc() : super(DoctorProfileState()) {
    on<DoctorProfileIncrementEvent>((event, emit) {
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
