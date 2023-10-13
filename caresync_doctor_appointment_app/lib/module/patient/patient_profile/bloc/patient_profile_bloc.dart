
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_profile_event.dart';
import '../state/patient_profile_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientProfileBloc extends Bloc<PatientProfileEvent, PatientProfileState> with _BlocLifecycle {
  PatientProfileBloc() : super(PatientProfileState()) {
    on<PatientProfileIncrementEvent>((event, emit) {
      
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
      
    