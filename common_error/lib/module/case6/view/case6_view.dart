
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../controller/case6_controller.dart';

class Case6View extends StatefulWidget {
    const Case6View({Key? key}) : super(key: key);

    Widget build(context, Case6Controller controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Case6"),
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
    State<Case6View> createState() => Case6Controller();
}
    