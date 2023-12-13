
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_course_list_controller.dart';

class UserCourseListView extends StatefulWidget {
  const UserCourseListView({Key? key}) : super(key: key);

  Widget build(context, UserCourseListController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserCourseList"),
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
  State<UserCourseListView> createState() => UserCourseListController();
}
    