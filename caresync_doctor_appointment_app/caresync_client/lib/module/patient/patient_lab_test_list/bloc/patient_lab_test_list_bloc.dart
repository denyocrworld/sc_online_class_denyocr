import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import '../event/patient_lab_test_list_event.dart';
import '../state/patient_lab_test_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientLabTestListBloc
    extends Bloc<PatientLabTestListEvent, PatientLabTestListState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';

import '../event/patient_lab_test_list_event.dart';
import '../state/patient_lab_test_list_state.dart';


class PatientLabTestListBloc
    extends Bloc<PatientLabTestListEvent, PatientLabTestListState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientLabTestListBloc() : super(PatientLabTestListState()) {
    on<PatientLabTestListIncrementEvent>((event, emit) {
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
