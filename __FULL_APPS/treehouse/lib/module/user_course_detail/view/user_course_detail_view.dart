
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_course_detail_controller.dart';

class UserCourseDetailView extends StatefulWidget {
  const UserCourseDetailView({Key? key}) : super(key: key);

  Widget build(context, UserCourseDetailController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserCourseDetail"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<UserCourseDetailView> createState() => UserCourseDetailController();
}
    