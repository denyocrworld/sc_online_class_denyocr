import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_course_detail_view.dart';

class UserCourseDetailController extends State<UserCourseDetailView> {
  static late UserCourseDetailController instance;
  late UserCourseDetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  orderCourse() async {
    UserMainNavigationController.instance.updateIndex(0);
    Get.back();
    snackbarPrimary(message: "Order success!");
  }
}
