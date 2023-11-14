import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';

class EmailLoginController extends State<EmailLoginView> {
  static late EmailLoginController instance;
  late EmailLoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? password;

  doLogin() async {
    showLoading();
    var isSuccess = await AuthService().loginByEmail(
      email: email!,
      password: password!,
    );
    hideLoading();

    if (!isSuccess) {
      snackbarDanger(message: "Wrong email or password");
      return;
    }
    Get.offAll(const MainNavigationView());
  }

  doRegister() => Get.to(const RegisterView());
}
