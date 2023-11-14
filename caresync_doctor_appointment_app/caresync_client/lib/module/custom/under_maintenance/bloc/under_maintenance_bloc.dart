import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/under_maintenance_event.dart';
import '../state/under_maintenance_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class UnderMaintenanceBloc
    extends Bloc<UnderMaintenanceEvent, UnderMaintenanceState>
    with _BlocLifecycle {
  UnderMaintenanceBloc() : super(UnderMaintenanceState()) {
    on<UnderMaintenanceIncrementEvent>((event, emit) {
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
