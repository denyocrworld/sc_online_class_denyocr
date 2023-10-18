//LoginViewState => LoginController
import 'package:contoh_service_dan_model/module/login/state/login_state.dart';
import 'package:contoh_service_dan_model/module/login/view/login_view.dart';
import 'package:contoh_service_dan_model/service/auth_service/auth_service.dart';
import 'package:flutter/material.dart';

class LoginController extends State<LoginView> {
  // LoginController
  LoginState state = LoginState();
  login() async {
    state.loading = true;
    setState(() {});

    await AuthService().login();

    state.loading = false;
    setState(() {});

    //navigasi
  }

  //LoginView
  @override
  Widget build(BuildContext context) {
    return widget.build(context, this);
  }
}
