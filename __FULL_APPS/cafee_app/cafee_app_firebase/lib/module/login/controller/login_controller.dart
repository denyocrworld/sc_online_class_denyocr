import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:injectable/injectable.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

@singleton
class LoginController extends Cubit<LoginState> with _CubitLifecycle {
  LoginController() : super(LoginState());

  getUsers() {}

  @override
  void initState() {
    //initState event
    state.email = DBService.get("email");
    state.password = DBService.get("password");
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

  Future<bool> loginByEmail() async {
    bool isLoggedIn = await AuthService().loginByEmail(
      email: state.email!,
      password: state.password!,
    );
    return isLoggedIn;
  }

  Future<bool> loginByGoogle() async {
    bool isLoggedIn = await AuthService().loginByGoogle();
    return isLoggedIn;
  }

  Future<bool> loginAnonymously() async {
    bool isLoggedIn = await AuthService().loginAnonymously();
    return isLoggedIn;
  }
}
