import 'package:flutter/material.dart';
import '../controller/example_controller.dart';
import 'package:get/get.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExampleController>(
      init: ExampleController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Example"),
          ),
        );
      },
    );
  }
}