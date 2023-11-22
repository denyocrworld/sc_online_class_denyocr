import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/doctor_profile_event.dart';
import '../state/doctor_profile_state.dart';


class DoctorProfileBloc extends Bloc<DoctorProfileEvent, DoctorProfileState>
    implements IBlocBase {
  DoctorProfileBloc() : super(DoctorProfileState()) {
    on<DoctorProfileIncrementEvent>((event, emit) {
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
