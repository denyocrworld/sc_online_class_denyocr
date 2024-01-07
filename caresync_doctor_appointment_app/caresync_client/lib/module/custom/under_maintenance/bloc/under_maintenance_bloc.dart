import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import '../event/under_maintenance_event.dart';
import '../state/under_maintenance_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class UnderMaintenanceBloc
    extends Bloc<UnderMaintenanceEvent, UnderMaintenanceState>
    with _BlocLifecycle {
=======
import 'package:hyper_ui/bloc_util.dart';

import '../event/under_maintenance_event.dart';
import '../state/under_maintenance_state.dart';


class UnderMaintenanceBloc
    extends Bloc<UnderMaintenanceEvent, UnderMaintenanceState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  UnderMaintenanceBloc() : super(UnderMaintenanceState()) {
    on<UnderMaintenanceIncrementEvent>((event, emit) {
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
