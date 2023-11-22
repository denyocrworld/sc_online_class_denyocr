import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/main_navigation_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class MainNavigationController extends Cubit<MainNavigationState>
    implements IBlocBase {
  MainNavigationController() : super(MainNavigationState());

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

  updateIndex(int newIndex) {
    state.selectedIndex = newIndex;
    emit(state.copyWith());
  }
}
