import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/services.dart';


class MainSetup {
  static setup({
    required DummyApi dummyApi,
  }) async {
    AppSession.dummyApi = dummyApi;

    print("Enter MainSetup");

    if (!kIsWeb) {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    }
    if (!kIsWeb) await NotificationApi.initialize();

    if (!kIsWeb) {
      var appDocDir = await getApplicationDocumentsDirectory();
      localdb = await Hive.openBox("myBox", path: appDocDir.path);
    } else {
      localdb = await Hive.openBox("myBox");
    }

    localdb = await Hive.openBox("myBox");

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    if (kIsWeb) {
      // FirebaseFirestore.instance.enablePersistence();
    } else {
      FirebaseFirestore.instance.settings = const Settings(
        persistenceEnabled: true,
      );
    }

    print("Exit MainSetup");
  }
}
