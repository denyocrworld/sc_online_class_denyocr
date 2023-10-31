import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/patient_order_payment_event.dart';
import '../state/patient_order_payment_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderPaymentBloc
    extends Bloc<PatientOrderPaymentEvent, PatientOrderPaymentState>
    with _BlocLifecycle {
  PatientOrderPaymentBloc() : super(PatientOrderPaymentState()) {
    on<PatientOrderPaymentIncrementEvent>((event, emit) {
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
