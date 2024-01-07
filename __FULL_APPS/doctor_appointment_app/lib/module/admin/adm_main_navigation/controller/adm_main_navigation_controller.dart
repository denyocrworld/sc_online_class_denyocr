import 'package:doctor_appointment_app/core.dart';

class AdmMainNavigationController extends GetxController {
  AdmMainNavigationView? view;
  String? adminUid;
  List vendorListUids = [];

  @override
  void onInit() async {
    super.onInit();

    var adminSnapshot = await FirebaseFirestore.instance
        .collection(collection.adminCollection)
        .get();
    adminUid = adminSnapshot.docs[0].data()["uid"];

    var vendorListSnapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .get();
    for (var doc in vendorListSnapshot.docs) {
      vendorListUids.add(doc.id);
    }
  }


}
