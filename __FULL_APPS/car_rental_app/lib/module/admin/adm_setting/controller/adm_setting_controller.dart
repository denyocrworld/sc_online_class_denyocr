import 'package:car_rental_app/core.dart';

class AdmSettingController extends GetxController {
  AdmSettingView? view;

  @override
  void onInit() async {
    super.onInit();
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.adminSettingCollection)
        .doc("app_setting")
        .get();
    if (!snapshot.exists) {
      await FirebaseFirestore.instance
          .collection(collection.adminSettingCollection)
          .doc("app_setting")
          .set({
        "vendor_approval": false,
      });
    }
  }


}
