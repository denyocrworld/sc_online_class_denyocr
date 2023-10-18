import 'package:flutter/material.dart';
import 'package:login_save_token_dan_user_data/core.dart';
import 'package:login_save_token_dan_user_data/service/auth_service/auth_service.dart';
import 'package:login_save_token_dan_user_data/service/db_service/db_service.dart';
import 'package:login_save_token_dan_user_data/shared/util/show_snackbar.dart';
import 'package:login_save_token_dan_user_data/state_util.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    email = DBService.get("email");
    password = DBService.get("password");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;

  login() async {
    try {
      bool isSuccess = await AuthService().login(
        email: email!,
        password: password!,
      );
      if (isSuccess) {
        Get.offAll(const MainNavigationView());
      } else {
        showPrimarySnackbar("Wrong email or password!");
      }
    } on Exception catch (err) {
      showPrimarySnackbar("$err");
    }
  }
}
