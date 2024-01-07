import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

void startAppByType(DummyApi dummyApi) async {
  WidgetsFlutterBinding.ensureInitialized();
  await MainSetup.setup(
    dummyApi: dummyApi,
  );
  await FirebaseAuth.instance.wait();

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
