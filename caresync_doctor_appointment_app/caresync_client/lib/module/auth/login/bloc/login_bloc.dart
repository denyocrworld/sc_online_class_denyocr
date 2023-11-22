import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState> implements IBlocBase {
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
