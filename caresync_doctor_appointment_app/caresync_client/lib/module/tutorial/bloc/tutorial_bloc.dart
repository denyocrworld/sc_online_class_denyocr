import 'package:flutter_bloc/flutter_bloc.dart';
import '../event/tutorial_event.dart';
import '../state/tutorial_state.dart';
<<<<<<< HEAD

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
=======
import 'package:hyper_ui/bloc_util.dart';



class TutorialBloc extends Bloc<TutorialEvent, TutorialState>
    implements IBlocBase {
  TutorialBloc() : super(TutorialState()) {
    on<TutorialIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
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
  }

  incrementCounter() {
    state.counter++;
    emit(state.copyWith());
  }

  decrementCounter() {
    state.counter--;
    emit(state.copyWith());
=======
  }

  @override
  void ready() {
    //ready event
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }
}
