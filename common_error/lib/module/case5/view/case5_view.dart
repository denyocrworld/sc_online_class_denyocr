
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../controller/case5_controller.dart';

class Case5View extends StatefulWidget {
    const Case5View({Key? key}) : super(key: key);

    Widget build(context, Case5Controller controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Case5"),
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
    State<Case5View> createState() => Case5Controller();
}
    