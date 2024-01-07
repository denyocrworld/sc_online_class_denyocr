import 'package:barber_app/core.dart';

class UserApi {
  static initialize() async {
    await FirebaseFirestore.instance
        .collection(collection.userDataCollection)
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .set(
      {
        "profile": {
          "uid": AppSession.userId,
          "email": AppSession.currentUser!.email,
          "email_verified": AppSession.currentUser!.emailVerified,
          "photo_url": AppSession.currentUser!.photoURL,
          "display_name": AppSession.currentUser!.displayName,
        },
      },
      SetOptions(
        merge: true,
      ),
    );
  }
}
