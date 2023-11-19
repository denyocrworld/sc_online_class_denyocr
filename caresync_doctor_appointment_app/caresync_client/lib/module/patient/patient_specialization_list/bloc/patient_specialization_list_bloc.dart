import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_specialization_list_event.dart';
import '../state/patient_specialization_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientSpecializationListBloc
    extends Bloc<PatientSpecializationListEvent, PatientSpecializationListState>
    with _BlocLifecycle {
  PatientSpecializationListBloc() : super(PatientSpecializationListState()) {
    on<PatientSpecializationListIncrementEvent>((event, emit) {
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
