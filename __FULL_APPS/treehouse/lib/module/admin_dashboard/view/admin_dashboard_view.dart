
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/admin_dashboard_controller.dart';

class AdminDashboardView extends StatefulWidget {
  const AdminDashboardView({Key? key}) : super(key: key);

  Widget build(context, AdminDashboardController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("AdminDashboard"),
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
  State<AdminDashboardView> createState() => AdminDashboardController();
}
    