import 'package:login_save_token_dan_user_data/core.dart';
import 'package:flutter/material.dart';
import 'package:login_save_token_dan_user_data/service/auth_service/auth_service.dart';
import 'package:login_save_token_dan_user_data/service/db_service/db_service.dart';
import 'package:login_save_token_dan_user_data/state_util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBService.init();
  await AuthService.init();
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
      debugShowCheckedModeBanner: false,
      home: AuthService.isLoggedIn
          ? const MainNavigationView()
          : const LoginView(),
    );
  }
}
