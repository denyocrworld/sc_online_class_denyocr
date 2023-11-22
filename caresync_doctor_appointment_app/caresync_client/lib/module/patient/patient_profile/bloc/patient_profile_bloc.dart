import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';

import '../event/patient_profile_event.dart';
import '../state/patient_profile_state.dart';


class PatientProfileBloc extends Bloc<PatientProfileEvent, PatientProfileState>
    implements IBlocBase {
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
