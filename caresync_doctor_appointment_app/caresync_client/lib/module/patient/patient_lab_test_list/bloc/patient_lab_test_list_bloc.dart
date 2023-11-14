import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_lab_test_list_event.dart';
import '../state/patient_lab_test_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientLabTestListBloc
    extends Bloc<PatientLabTestListEvent, PatientLabTestListState>
    with _BlocLifecycle {
  PatientLabTestListBloc() : super(PatientLabTestListState()) {
    on<PatientLabTestListIncrementEvent>((event, emit) {
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
