import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DummyApi dummyApi = MainDummyApi();
  await MainSetup.setup(
    dummyApi: dummyApi,
  );
  await FirebaseAuth.instance.wait();

  startApp();
}

void startApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData().getCustomTheme(
      customColorSet: colorPalettes[0],
    ),
    defaultTransition: Transition.fade,
    home: LoginView(),
  ));
}
