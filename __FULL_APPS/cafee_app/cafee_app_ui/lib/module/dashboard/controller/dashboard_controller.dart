
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/dashboard_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class DashboardController extends Cubit<DashboardState> with _CubitLifecycle {
  DashboardController() : super(DashboardState());

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

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
    
      
    