import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_order_event.dart';
import '../state/patient_order_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderBloc extends Bloc<PatientOrderEvent, PatientOrderState>
    with _BlocLifecycle {
  PatientOrderBloc() : super(PatientOrderState()) {
    on<PatientOrderIncrementEvent>((event, emit) {
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
