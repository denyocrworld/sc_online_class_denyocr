import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';

class ProfileController extends State<ProfileView> {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  doLogout() async {
    showLoading();
    await AuthService().logout();
    Get.offAll(const LoginView());
  }
}
