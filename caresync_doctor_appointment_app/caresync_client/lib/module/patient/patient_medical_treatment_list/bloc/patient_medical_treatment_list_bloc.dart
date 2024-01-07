import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import '../event/patient_medical_treatment_list_event.dart';
import '../state/patient_medical_treatment_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientMedicalTreatmentListBloc extends Bloc<
    PatientMedicalTreatmentListEvent,
    PatientMedicalTreatmentListState> with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_medical_treatment_list_event.dart';
import '../state/patient_medical_treatment_list_state.dart';


class PatientMedicalTreatmentListBloc extends Bloc<
    PatientMedicalTreatmentListEvent,
    PatientMedicalTreatmentListState> implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
