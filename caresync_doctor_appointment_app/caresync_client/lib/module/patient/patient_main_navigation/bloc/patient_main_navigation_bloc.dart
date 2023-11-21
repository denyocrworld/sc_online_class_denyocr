import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';
import '../event/patient_main_navigation_event.dart';
import '../state/patient_main_navigation_state.dart';

@singleton
class PatientMainNavigationBloc
    extends Bloc<PatientMainNavigationEvent, PatientMainNavigationState>
    implements IBlocBase {
  PatientMainNavigationBloc() : super(PatientMainNavigationState()) {
    on<PatientMainNavigationIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientMainNavigationUpdateIndexEvent>((event, emit) {
      state.selectedIndex = event.selectedIndex;
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
