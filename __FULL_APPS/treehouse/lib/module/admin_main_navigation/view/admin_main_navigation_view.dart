
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_main_navigation_controller.dart';

class AdminMainNavigationView extends StatefulWidget {
  const AdminMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, AdminMainNavigationController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AdminMainNavigation"),
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
  State<AdminMainNavigationView> createState() => AdminMainNavigationController();
}
    