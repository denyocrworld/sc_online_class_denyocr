import 'dart:developer';

import 'package:doctor_appointment_app/core.dart';

class AppApi {
  static Future generateDummyDataIfNotExists({
    bool generateDummy = true,
  }) async {
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .get();
    if (snapshot.docs.isEmpty) {
      if (generateDummy) {
        await VendorApi.generateDummy();
      }
      await FirebaseFirestore.instance
          .collection(collection.adminCollection)
          .add({
        "uid": FirebaseAuth.instance.currentUser!.uid,
      });
    }
  }

  static Future checkCurrentUserAdminRole() async {
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.adminCollection)
        .where("uid", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .get();

    if (snapshot.docs.isNotEmpty) {
      AppSession.isAdmin = true;
      return Future.value(true);
    }
    return Future.value(false);
  }

  static Future resetAllValues() async {
    await FirebaseFirestore.instance
        .collection(collection.adminCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.adminSettingCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.bookingCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.bookingListCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.userDataCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.chatCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.chatListCollection)
        .deleteAll();
    await FirebaseFirestore.instance
        .collection(collection.ratingCollection)
        .deleteAll();
  }

  static handleFirstTimeLogin({
    bool generateDummy = true,
  }) async {
    AppSession.isAdmin = true;

    await resetAllValues();
    await AdminSettingApi.initialize();
    await UserApi.initialize();
    await AppApi.generateDummyDataIfNotExists(
      generateDummy: generateDummy,
    );

    AppSession.myVendor = await VendorApi.initialize();
    if (await AppApi.needToGenerateIndex()) {
      return AppApi.redirectToFirstTimeIndexSetup();
    }

    hideLoading();

    Get.offAll(AdmMainNavigationView());
  }

  static List<String> indexUrls = [];
  static Future<bool> needToGenerateIndex() async {
    indexUrls = [];
    log("Check INdex");
    try {
      await FirebaseFirestore.instance
          .collection(collection.bookingCollection)
          .where("user_id", isEqualTo: AppSession.userId)
          .where("status", isEqualTo: "Pending")
          .orderBy("booking_date")
          .limit(1)
          .get();
    } on Exception catch (_) {
      if (_.toString().contains("The query requires an index. ")) {
        var url = "https${_.toString().split("https")[1]}";
        log(url);
        indexUrls.add(url);
      }
    }

    try {
      await FirebaseFirestore.instance
          .collection(collection.bookingCollection)
          .where("vendor_id", isEqualTo: AppSession.userId)
          .where("status", isEqualTo: "Pending")
          .orderBy("booking_date")
          .limit(1)
          .get();
    } on Exception catch (_) {
      if (_.toString().contains("The query requires an index. ")) {
        var url = "https${_.toString().split("https")[1]}";
        log(url);
        indexUrls.add(url);
      }
    }

    try {
      await FirebaseFirestore.instance
          .collection(collection.bookingCollection)
          .where("vendor_id", isEqualTo: AppSession.userId)
          .orderBy("booking_date")
          .limit(1)
          .get();
    } on Exception catch (_) {
      if (_.toString().contains("The query requires an index. ")) {
        var url = "https${_.toString().split("https")[1]}";
        log(url);
        indexUrls.add(url);
      }
    }

    try {
      await FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .where("status", isEqualTo: "Approved")
          .orderBy("rate", descending: true)
          .limit(1)
          .get();
    } on Exception catch (_) {
      if (_.toString().contains("The query requires an index. ")) {
        var url = "https${_.toString().split("https")[1]}";
        log(url);
        indexUrls.add(url);
      }
    }

    if (indexUrls.isNotEmpty) {
      return true;
    }
    return false;
  }

  static redirectToFirstTimeIndexSetup() async {
    Get.deleteAll();
    Get.offAll(IndexGenerator(
      urls: AppApi.indexUrls,
    ));
  }
}
