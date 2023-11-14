import 'package:flutter_http_request/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_http_request/service/db_service/db_service.dart';
import 'package:flutter_http_request/state_util.dart';
import 'package:flutter_http_request/user_list.dart';

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
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: const LoginView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
