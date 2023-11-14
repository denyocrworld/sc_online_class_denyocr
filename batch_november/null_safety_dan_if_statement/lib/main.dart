import 'package:null_safety_dan_if_statement/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyClass {
  bool save() {
    return true;
  }

  int delete() {
    return 12;
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String category = "Sembako";
    int qty = 10;
    double discount = 0;
    double additionalDiscount = 0;
    //10% jika category-nya Rokok
    //20% jika category-nya Susu
    //5% jika categorynya selain Rokok dan Susu
    //Berikan 10% lagi additionalDiscount jika category-nya adalah Rokok dan qty 10

    // condition1 && condition2
    // false && true => false
    // true && false => false
    // true && true => true
    // false && false => false

    // condition1 || condition2
    // false || true => true
    // true || false => true
    // true || true => true
    // false || false => false

    //50% kalo categorynya bukan rokok
    bool isAdmin = false;
    //jika bukan admin
    // if (isAdmin == false) {
    if (!isAdmin) {
      discount = 50;
    }

    // if (category == "Rokok" && qty == 10) {
    //   //false
    //   discount = 10;
    //   additionalDiscount = 10;
    // } else if (category == "Rokok") {
    //   //false
    //   discount = 10;
    // } else if (category == "Susu") {
    //   //false
    //   discount = 20;
    // } else {
    //   discount = 5;
    // }
    print("discount: $discount");
    print("additionalDiscount: $additionalDiscount");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //ada potensi name itu mungkin saja null
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
