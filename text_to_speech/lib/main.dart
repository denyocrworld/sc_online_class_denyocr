import 'package:flutter/material.dart';
import 'package:text_to_speech/core.dart';
import 'package:text_to_speech/state_util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Android, IOS, Web, Desktop
      // encoding/decoding json in python
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const DashboardView(),
    );
  }
}
