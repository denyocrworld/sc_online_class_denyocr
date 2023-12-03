import 'package:car_rental_app/core.dart';

class VmEditVendorController extends GetxController {
  VmEditVendorView? view;
  bool loading = true;
  bool editable = false;

  @override
  void onReady() {
    super.onReady();
    print("#############");
    print(view!.item["id"]);
    print("#############");
    loadData();
  }

  loadData() async {
    loading = false;
    update();
  }

  doLogout() async {
    showLoading();
    await FirebaseAuth.instance.signOut();
    hideLoading();
    Get.offAll(LoginView());
  }
}
