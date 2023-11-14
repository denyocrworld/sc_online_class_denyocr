import 'package:chatify_client/core.dart';
import 'package:chatify_client/service/db_service/db_service.dart';
import 'package:chatify_client/state_util.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Get.navigatorKey,
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const LoginView(),
    );
  }
}
