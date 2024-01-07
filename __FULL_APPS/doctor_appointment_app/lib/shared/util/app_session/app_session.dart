import 'package:doctor_appointment_app/core.dart';

class AppSession {
  static late DummyApi dummyApi;
  static User? get currentUser {
    return FirebaseAuth.instance.currentUser;
  }

  static String currency = "\$";

  //Vendor Only Sessions
  static String? documentId;
  static Map<String, dynamic> myVendor = {};

  static bool isVendorOwner = false;
  static bool isAdmin = false;

  static String get userId {
    return AppSession.currentUser!.uid;
  }
}

DocumentReference get userCollection {
  return FirebaseFirestore.instance
      .collection(collection.userDataCollection)
      .doc(AppSession.userId);
}

DocumentReference get vendorManagerCollection {
  return FirebaseFirestore.instance
      .collection(collection.vendorCollection)
      .doc(AppSession.userId);
}

CollectionNames get collection {
  return config.collectionNames;
}

AppConfig get config {
  return AppSession.dummyApi.appConfig;
}
