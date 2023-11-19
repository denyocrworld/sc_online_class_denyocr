// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:async';

import 'package:flutter/material.dart';

class TimerExampleView extends StatefulWidget {
  const TimerExampleView({Key? key}) : super(key: key);

  @override
  State<TimerExampleView> createState() => _TimerExampleViewState();
}

class _TimerExampleViewState extends State<TimerExampleView> {
  int counter = 0;
  late Timer timer;
  @override
  void initState() {
    print("initState terpanggil");
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      counter++;
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    print("dispose terpanggil");

    timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build terpanggil");
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
                "Counter: $counter",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
