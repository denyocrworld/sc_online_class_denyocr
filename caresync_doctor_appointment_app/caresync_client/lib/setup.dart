<<<<<<< HEAD
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
=======
import 'package:firebase_core/firebase_core.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
import 'package:flutter/material.dart';
import 'package:hyper_ui/firebase_options.dart';

Future initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}
