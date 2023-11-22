import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_lab_test_list_event.dart';
import '../state/patient_lab_test_list_state.dart';


class PatientLabTestListBloc
    extends Bloc<PatientLabTestListEvent, PatientLabTestListState>
    implements IBlocBase {
  PatientLabTestListBloc() : super(PatientLabTestListState()) {
    on<PatientLabTestListIncrementEvent>((event, emit) {
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
