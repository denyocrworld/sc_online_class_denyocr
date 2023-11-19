import 'package:chatify_client/service/auth_service/auth_service.dart';
import 'package:chatify_client/service/db_service/db_service.dart';
import 'package:chatify_client/state_util.dart';
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    email = DBService.get("email");
    name = DBService.get("name");
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? email;
  String? name;
  login() async {
    await AuthService().login(email: email!, name: name!);
    Get.offAll(const UserListView());
  }
}
