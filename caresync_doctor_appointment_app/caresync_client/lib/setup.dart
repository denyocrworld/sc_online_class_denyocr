import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/firebase_options.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
