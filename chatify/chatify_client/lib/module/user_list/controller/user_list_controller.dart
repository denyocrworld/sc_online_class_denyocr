import 'package:chatify_client/service/user_service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:chatify_client/core.dart';
import '../view/user_list_view.dart';

class UserListController extends State<UserListView> {
  static late UserListController instance;
  late UserListView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  logout() async {
    Get.offAll(const LoginView());
  }

  List users = [];
  getUsers() async {
    users = await UserService().getUsers();
    setState(() {});
  }
}
