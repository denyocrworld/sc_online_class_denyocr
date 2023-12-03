import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseAuthExtension on FirebaseAuth {
  wait() async {
    bool ready = false;
    FirebaseAuth.instance.authStateChanges().listen((event) {
      ready = true;
    });

    while (ready == false) {
      print("Check Firebase Status..");
      await Future.delayed(const Duration(milliseconds: 250));
    }
    print("Firebase IS OK");
  }
}
