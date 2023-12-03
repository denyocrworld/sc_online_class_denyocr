import 'package:barber_app/core.dart';
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
  DummyApi dummyApi = MainDummyApi();

  await MainSetup.setup(
    dummyApi: dummyApi,
  );

  int appThemeIndex = dummyApi.appConfig.defaultThemeIndex;
  await AdminSettingApi.loadAppSetting();
  Widget mainView = await LoginSessionHandler.getMainView();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    theme: ThemeData().getCustomTheme(
      customColorSet: colorPalettes[appThemeIndex],
    ),
    defaultTransition: Transition.fade,
    home: mainView,
  ));
}
