import 'package:doctor_appointment_app/core.dart';

class ProfileController extends GetxController {
  ProfileView? view;

  doLogout() async {
    showLoading();
    await FirebaseAuth.instance.signOut();
    hideLoading();
    Get.offAll(LoginView());
  }
}
