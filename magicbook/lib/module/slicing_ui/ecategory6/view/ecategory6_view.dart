import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/ecategory6_controller.dart';

class Ecategory6View extends StatefulWidget {
  const Ecategory6View({Key? key}) : super(key: key);

  Widget build(context, Ecategory6Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecategory6"),
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
  State<Ecategory6View> createState() => Ecategory6Controller();
}
