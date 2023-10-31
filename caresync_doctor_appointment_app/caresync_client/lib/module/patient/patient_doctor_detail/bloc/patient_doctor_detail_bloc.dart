import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientDoctorDetailBloc
    extends Bloc<PatientDoctorDetailEvent, PatientDoctorDetailState>
    with _BlocLifecycle {
  PatientDoctorDetailBloc() : super(PatientDoctorDetailState()) {
    on<PatientDoctorDetailIncrementEvent>((event, emit) {
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
