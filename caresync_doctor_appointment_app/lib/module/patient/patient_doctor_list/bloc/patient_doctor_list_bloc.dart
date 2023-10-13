
import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_doctor_list_event.dart';
import '../state/patient_doctor_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDoctorListBloc extends Bloc<PatientDoctorListEvent, PatientDoctorListState> with _BlocLifecycle {
  PatientDoctorListBloc() : super(PatientDoctorListState()) {
    on<PatientDoctorListIncrementEvent>((event, emit) {
      
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
      
    