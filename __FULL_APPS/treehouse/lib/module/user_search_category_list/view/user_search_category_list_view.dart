
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_search_category_list_controller.dart';

class UserSearchCategoryListView extends StatefulWidget {
  const UserSearchCategoryListView({Key? key}) : super(key: key);

  Widget build(context, UserSearchCategoryListController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("UserSearchCategoryList"),
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
  State<UserSearchCategoryListView> createState() => UserSearchCategoryListController();
}
    