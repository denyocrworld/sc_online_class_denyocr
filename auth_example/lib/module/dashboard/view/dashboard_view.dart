import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: 3,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: const NetworkImage(
                  "https://i.ibb.co/QrTHd59/woman.jpg",
                ),
              ),
              title: const Text("Jessica Doe"),
              subtitle: const Text("Programmer"),
            ),
          );
        },
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
