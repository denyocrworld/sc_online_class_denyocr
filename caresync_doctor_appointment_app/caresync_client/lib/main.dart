import 'package:hyper_ui/core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  configureDependencies();
  // var instance = GetIt.I<PatientDoctorDetailBloc>();
  // print(instance.state.counter);
  // print(instance.state.doctor);
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
