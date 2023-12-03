import 'package:get/get.dart';

extension GetExtension on GetInterface {
  Future backUntil(String className) async {
    while (true) {
      log("Current Route: ${Get.currentRoute}");
      Get.back();
      log("After Back Route: ${Get.currentRoute}");

      if (Get.currentRoute == "/") {
        break;
      }

      if (Get.currentRoute == "/$className") {
        break;
      }
    }
  }
}
