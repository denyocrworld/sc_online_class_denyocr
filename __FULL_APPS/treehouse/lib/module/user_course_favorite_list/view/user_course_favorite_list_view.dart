
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_course_favorite_list_controller.dart';

class UserCourseFavoriteListView extends StatefulWidget {
  const UserCourseFavoriteListView({Key? key}) : super(key: key);

  Widget build(context, UserCourseFavoriteListController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserCourseFavoriteList"),
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
  State<UserCourseFavoriteListView> createState() => UserCourseFavoriteListController();
}
    