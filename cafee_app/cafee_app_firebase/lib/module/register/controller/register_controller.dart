import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import '../state/register_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class RegisterController extends Cubit<RegisterState> implements IBlocBase {
  RegisterController() : super(RegisterState());

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

  register() async {
    bool isLoggedIn = await AuthService().register(
      email: state.email!,
      password: state.password!,
    );

    return isLoggedIn;
  }
}
