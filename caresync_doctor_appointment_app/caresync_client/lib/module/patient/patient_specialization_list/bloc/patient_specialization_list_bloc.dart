import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_specialization_list_event.dart';
import '../state/patient_specialization_list_state.dart';


class PatientSpecializationListBloc
    extends Bloc<PatientSpecializationListEvent, PatientSpecializationListState>
    implements IBlocBase {
  PatientSpecializationListBloc() : super(PatientSpecializationListState()) {
    on<PatientSpecializationListIncrementEvent>((event, emit) {
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
