import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_order_event.dart';
import '../state/patient_order_state.dart';


class PatientOrderBloc extends Bloc<PatientOrderEvent, PatientOrderState>
    implements IBlocBase {
  PatientOrderBloc() : super(PatientOrderState()) {
    on<PatientOrderIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
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
