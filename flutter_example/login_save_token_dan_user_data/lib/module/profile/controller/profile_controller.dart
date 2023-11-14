import 'package:flutter/material.dart';
import 'package:login_save_token_dan_user_data/core.dart';
import 'package:login_save_token_dan_user_data/service/auth_service/auth_service.dart';
import 'package:login_save_token_dan_user_data/state_util.dart';

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

  logout() async {
    await AuthService().logout();
    Get.offAll(const LoginView());
  }
}
