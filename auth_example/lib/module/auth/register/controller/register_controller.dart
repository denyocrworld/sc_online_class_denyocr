import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';

class RegisterController extends State<RegisterView> {
  static late RegisterController instance;
  late RegisterView view;

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
  String? passwordConfirmation;

  doRegister() async {
    showLoading();
    bool isSuccess = await AuthService().registerByEmail(
      email: email!,
      password: password!,
    );
    hideLoading();

    if (!isSuccess) {
      snackbarDanger(message: "Failed to register!");
      return;
    }

    Get.offAll(const MainNavigationView());
  }
}
