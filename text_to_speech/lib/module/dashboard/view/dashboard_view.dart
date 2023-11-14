import 'package:flutter/material.dart';
import 'package:text_to_speech/core.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    List menus = [
      {
        "label": "Word Dictionaries",
        "view": const WordDictionariesView(),
      },
      {
        "label": "Interview Convertations",
        "view": const InterviewConvertationsView(),
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: menus.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = menus[index];
          return ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () => Get.to(item["view"]),
            child: Text(
              "${item["label"]}",
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
