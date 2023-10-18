
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../controller/qrscan_controller.dart';

class QrscanView extends StatefulWidget {
    const QrscanView({Key? key}) : super(key: key);

    Widget build(context, QrscanController controller) {
    controller.view = this;

    return Scaffold(
        appBar: AppBar(
        title: const Text("Qrscan"),
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
    State<QrscanView> createState() => QrscanController();
}
    