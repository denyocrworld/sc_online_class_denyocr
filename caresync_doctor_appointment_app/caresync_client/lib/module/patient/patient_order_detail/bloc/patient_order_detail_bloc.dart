import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_order_detail_event.dart';
import '../state/patient_order_detail_state.dart';


class PatientOrderDetailBloc
    extends Bloc<PatientOrderDetailEvent, PatientOrderDetailState>
    implements IBlocBase {
  PatientOrderDetailBloc() : super(PatientOrderDetailState()) {
    on<PatientOrderDetailIncrementEvent>((event, emit) {
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
