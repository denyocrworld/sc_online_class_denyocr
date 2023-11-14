import 'package:doctor_appointment_app/core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VmProfileController extends GetxController {
  VmProfileView? view;

  doLogout() async {
    showLoading();
    await FirebaseAuth.instance.signOut();
    hideLoading();
    Get.offAll(LoginView());
  }
}
