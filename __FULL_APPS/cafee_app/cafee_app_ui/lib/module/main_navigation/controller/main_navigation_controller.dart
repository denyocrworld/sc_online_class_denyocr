import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/main_navigation_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class MainNavigationController extends Cubit<MainNavigationState>
    with _CubitLifecycle {
  MainNavigationController() : super(MainNavigationState());

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

  updateIndex(int newIndex) {
    state.selectedIndex = newIndex;
    emit(state.copyWith());
  }
}
