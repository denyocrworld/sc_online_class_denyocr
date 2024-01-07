<<<<<<< HEAD
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../event/patient_order_patient_data_event.dart';
import '../state/patient_order_patient_data_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

@singleton
class PatientOrderPatientDataBloc
    extends Bloc<PatientOrderPatientDataEvent, PatientOrderPatientDataState>
    with _BlocLifecycle {
=======
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_order_patient_data_event.dart';
import '../state/patient_order_patient_data_state.dart';


class PatientOrderPatientDataBloc
    extends Bloc<PatientOrderPatientDataEvent, PatientOrderPatientDataState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientOrderPatientDataBloc() : super(PatientOrderPatientDataState()) {
    on<PatientOrderPatientDataIncrementEvent>((event, emit) {
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
    if (kDebugMode) {
      state.fullName = "Patient Demo";
      state.birthDate = "1993-08-01";
      state.gender = "Male";
      state.idCard = "11114102412";
      state.address = "Bogor, Jawa Barat";
    }
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
