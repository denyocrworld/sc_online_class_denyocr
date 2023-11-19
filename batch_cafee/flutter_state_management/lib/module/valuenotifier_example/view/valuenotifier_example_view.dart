// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// int counter = 0;
ValueNotifier counter = ValueNotifier<int>(0);

class ValuenotifierExampleView extends StatelessWidget {
  const ValuenotifierExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              ValueListenableBuilder(
                valueListenable: counter,
                builder: (context, _, __) {
                  return Text(
                    "${counter.value}",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  // counter++;
                  counter.value++;
                  // counterStreamController.sink.add(snapshot.data! + 1);
                },
                child: const Text("Update Counter"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
