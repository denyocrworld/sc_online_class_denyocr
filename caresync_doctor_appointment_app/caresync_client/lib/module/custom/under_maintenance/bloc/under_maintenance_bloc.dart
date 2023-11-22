import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/bloc_util.dart';

import '../event/under_maintenance_event.dart';
import '../state/under_maintenance_state.dart';


class UnderMaintenanceBloc
    extends Bloc<UnderMaintenanceEvent, UnderMaintenanceState>
    implements IBlocBase {
  UnderMaintenanceBloc() : super(UnderMaintenanceState()) {
    on<UnderMaintenanceIncrementEvent>((event, emit) {
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
