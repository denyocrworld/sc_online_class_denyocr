import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';
import '../state/login_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class LoginController extends Cubit<LoginState> implements IBlocBase {
  LoginController() : super(LoginState());

  @override
  void initState() {
    //initState event
    state.email = DBService.get("email");
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  login() async {
    showLoading();
    bool isLoggedIn = await AuthService().login(
      email: state.email!,
      password: state.password!,
    );
    hideLoading();

    if (!isLoggedIn) {
      snackbarDanger(message: "Wrong email or password!");
      return;
    }

    Get.offAll(MainNavigationView());
  }
}
