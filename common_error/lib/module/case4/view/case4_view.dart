
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../controller/case4_controller.dart';

class Case4View extends StatefulWidget {
    const Case4View({Key? key}) : super(key: key);

    Widget build(context, Case4Controller controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Case4"),
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
    State<Case4View> createState() => Case4Controller();
}
    