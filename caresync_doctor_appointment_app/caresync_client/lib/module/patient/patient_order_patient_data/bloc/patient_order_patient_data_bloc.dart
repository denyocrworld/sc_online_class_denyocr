import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_order_patient_data_event.dart';
import '../state/patient_order_patient_data_state.dart';


class PatientOrderPatientDataBloc
    extends Bloc<PatientOrderPatientDataEvent, PatientOrderPatientDataState>
    implements IBlocBase {
  PatientOrderPatientDataBloc() : super(PatientOrderPatientDataState()) {
    on<PatientOrderPatientDataIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
    if (kDebugMode) {
      state.fullName = "Patient Demo";
      state.birthDate = "1993-08-01";
      state.gender = "Male";
      state.idCard = "11114102412";
      state.address = "Bogor, Jawa Barat";
    }
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }
}
