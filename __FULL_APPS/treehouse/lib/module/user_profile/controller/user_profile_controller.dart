import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_profile_view.dart';

class UserProfileController extends State<UserProfileView> {
  static late UserProfileController instance;
  late UserProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  logout() {
    Get.offAll(WelcomeView());
  }
}
