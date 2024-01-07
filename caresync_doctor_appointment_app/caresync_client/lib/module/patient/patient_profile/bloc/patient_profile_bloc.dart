import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../event/patient_profile_event.dart';
import '../state/patient_profile_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientProfileBloc extends Bloc<PatientProfileEvent, PatientProfileState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';

import '../event/patient_profile_event.dart';
import '../state/patient_profile_state.dart';


class PatientProfileBloc extends Bloc<PatientProfileEvent, PatientProfileState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientProfileBloc() : super(PatientProfileState()) {
    on<PatientProfileIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientProfileLogoutEvent>((event, emit) async {
      await AuthService().logout();
      state.logoutSuccess = true;
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
