import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/tutorial_event.dart';
import '../state/tutorial_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class TutorialBloc extends Bloc<TutorialEvent, TutorialState>
    with _BlocLifecycle {
  TutorialBloc() : super(TutorialState()) {
    // on<TutorialIncrementEvent>((event, emit) {
    //   //1. freezed ata tidak?
    //   //2. freezed-nya itu mutable atau immutable?

    //   // freezed | immutable
    //   // Buat rumah baru dari awal tapi dimodif dikit pintunya
    //   // emit(state.copyWith(
    //   //   counter: state.counter + 1,
    //   // ));

    //   //unfreezed | mutable
    //   // Modifikasi rumah yang ada, kita ubah pintunya
    //   state.counter++;
    //   emit(state.copyWith());
    // });
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

  incrementCounter() {
    state.counter++;
    emit(state.copyWith());
  }

  decrementCounter() {
    state.counter--;
    emit(state.copyWith());
  }
}
