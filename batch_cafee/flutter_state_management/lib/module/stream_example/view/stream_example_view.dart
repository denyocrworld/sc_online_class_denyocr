import 'package:flutter/material.dart';
import 'dart:async';

final StreamController<int> counterStreamController = StreamController<int>();

class StreamExampleView extends StatelessWidget {
  const StreamExampleView({Key? key}) : super(key: key);

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
              StreamBuilder<int>(
                stream: counterStreamController.stream,
                initialData: 0,
                builder: (context, snapshot) {
                  return Column(
                    children: [
                      Text(
                        "${snapshot.data}",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          counterStreamController.sink.add(snapshot.data! + 1);
                        },
                        child: const Text("Update Counter"),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
