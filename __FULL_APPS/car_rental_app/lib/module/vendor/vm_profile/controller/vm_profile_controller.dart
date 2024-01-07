import 'package:car_rental_app/core.dart';

class VmProfileController extends GetxController {
  VmProfileView? view;

  doLogout() async {
    showLoading();
    await FirebaseAuth.instance.signOut();
    hideLoading();
    Get.offAll(LoginView());
  }
}