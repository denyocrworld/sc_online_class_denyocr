import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_order_detail_event.dart';
import '../state/patient_order_detail_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderDetailBloc
    extends Bloc<PatientOrderDetailEvent, PatientOrderDetailState>
    with _BlocLifecycle {
  PatientOrderDetailBloc() : super(PatientOrderDetailState()) {
    on<PatientOrderDetailIncrementEvent>((event, emit) {
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
