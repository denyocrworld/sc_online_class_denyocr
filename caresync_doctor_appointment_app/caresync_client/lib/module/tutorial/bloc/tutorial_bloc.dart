import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/tutorial_event.dart';
import '../state/tutorial_state.dart';
import 'package:hyper_ui/bloc_util.dart';



class TutorialBloc extends Bloc<TutorialEvent, TutorialState>
    implements IBlocBase {
  TutorialBloc() : super(TutorialState()) {
    on<TutorialIncrementEvent>((event, emit) {
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
