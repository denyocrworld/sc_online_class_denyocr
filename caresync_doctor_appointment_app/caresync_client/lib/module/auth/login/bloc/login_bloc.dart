import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
<<<<<<< HEAD
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../event/login_event.dart';
import '../state/login_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class LoginBloc extends Bloc<LoginEvent, LoginState> with _BlocLifecycle {
=======



class LoginBloc extends Bloc<LoginEvent, LoginState> implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  LoginBloc() : super(LoginState()) {
    on<LoginIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<LoginByGoogleEvent>((event, emit) async {
      var isLoggedIn = await AuthService().loginByGoogle();
      if (isLoggedIn) {
        state.isLoginSuccess = true;
        emit(state.copyWith());
      }
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
