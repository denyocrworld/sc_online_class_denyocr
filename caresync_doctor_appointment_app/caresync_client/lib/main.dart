import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/firebase_options.dart';
import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/injection.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';

void main() async {
  await initialize();
  configureDependencies();
  var instance = GetIt.I<PatientDoctorDetailBloc>();
  print(instance.state.counter);
  print(instance.state.doctor);
  runMainApp();
}

runMainApp() async {
  return runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget mainView = LoginView();
    if (AuthService.isLoggedIn) {
      mainView = PatientMainNavigationView();
    }
    return MaterialApp(
      title: 'Capek Ngoding',
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: getDefaultTheme(),
      home: mainView,
    );
  }
}
