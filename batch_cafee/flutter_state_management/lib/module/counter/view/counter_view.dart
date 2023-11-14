import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class CounterState {
  int counter;
  CounterState({
    this.counter = 0,
  });
}

class _CounterViewState extends State<CounterView> {
  // int counter = 0;
  CounterState state = CounterState();
  updateCounter() {
    state.counter++;
    print(state.counter);
    setState(() {});
    //--- getx, bloc, provider, riverpod
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter: ${state.counter}",
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () => updateCounter(),
              child: const Text("Update Counter"),
            ),
          ],
        ),
      ),
    );
  }
}
