// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

// 1. Pisahkan kode yang akan kita jadikan View
// 2. Pisahkan kode yang akan kita jadikan Controller

import 'package:flutter/material.dart';

//tutorial_view.dart
class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  @override
  State<TutorialView> createState() => TutorialController();

  Widget build(
    BuildContext context,
    TutorialController controller,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.updateCounter(),
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//tutorial_controller.dart
class TutorialController extends State<TutorialView> {
  int counter = 0;
  updateCounter() {
    counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
