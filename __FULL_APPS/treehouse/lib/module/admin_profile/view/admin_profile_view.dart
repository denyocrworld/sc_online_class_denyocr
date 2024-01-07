
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_profile_controller.dart';

class AdminProfileView extends StatefulWidget {
  const AdminProfileView({Key? key}) : super(key: key);

  Widget build(context, AdminProfileController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AdminProfile"),
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
  State<AdminProfileView> createState() => AdminProfileController();
}
    