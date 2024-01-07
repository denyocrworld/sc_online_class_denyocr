import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:injectable/injectable.dart';
import '../event/patient_order_event.dart';
import '../state/patient_order_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

@singleton
class PatientOrderBloc extends Bloc<PatientOrderEvent, PatientOrderState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_order_event.dart';
import '../state/patient_order_state.dart';


class PatientOrderBloc extends Bloc<PatientOrderEvent, PatientOrderState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientOrderBloc() : super(PatientOrderState()) {
    on<PatientOrderIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
<<<<<<< HEAD
    super.initState();
=======
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }

  @override
  void dispose() {
    //dispose event
<<<<<<< HEAD
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
=======
  }

  @override
  void ready() {
    //ready event
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }
}
