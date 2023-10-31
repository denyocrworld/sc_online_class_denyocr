import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_order_patient_data_event.dart';
import '../state/patient_order_patient_data_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderPatientDataBloc
    extends Bloc<PatientOrderPatientDataEvent, PatientOrderPatientDataState>
    with _BlocLifecycle {
  PatientOrderPatientDataBloc() : super(PatientOrderPatientDataState()) {
    on<PatientOrderPatientDataIncrementEvent>((event, emit) {
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
