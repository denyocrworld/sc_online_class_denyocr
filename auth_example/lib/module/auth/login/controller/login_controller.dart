import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doEmailLogin() => Get.to(const EmailLoginView());

  void doGoogleLogin() async {
    bool isSuccess = await AuthService().loginByGoogle();
    if (!isSuccess) {
      snackbarDanger(message: "Failed to login with google");
      return;
    }

    Get.offAll(const MainNavigationView());
  }

  doPhoneLogin() => Get.to(const PhoneVerificationView());
}
