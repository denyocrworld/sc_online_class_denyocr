import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_medical_treatment_list_event.dart';
import '../state/patient_medical_treatment_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientMedicalTreatmentListBloc extends Bloc<
    PatientMedicalTreatmentListEvent,
    PatientMedicalTreatmentListState> with _BlocLifecycle {
  PatientMedicalTreatmentListBloc()
      : super(PatientMedicalTreatmentListState()) {
    on<PatientMedicalTreatmentListIncrementEvent>((event, emit) {
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
