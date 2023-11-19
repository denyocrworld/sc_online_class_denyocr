import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../controller/case1_controller.dart';

class Case1View extends StatefulWidget {
  const Case1View({Key? key}) : super(key: key);

  Widget build(context, Case1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Case1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              /*
              Exception yang terjadi:
              Exception has occurred.
              _AssertionError ('package:flutter/src/widgets/container.dart': Failed assertion: line 270 pos 15: 'color == null || decoration == null': Cannot provide both a color and a decoration
              To provide both, use "decoration: BoxDecoration(color: color)".)

              Penyebab:
              Ngasih color pada Container yang sudah memiliki BoxDecoration.

              Catatan:
              Kalaupun ingin memberikan color, sebaiknya di dalam BoxDecoration saja
              */
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                decoration: const BoxDecoration(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Case1View> createState() => Case1Controller();
}
