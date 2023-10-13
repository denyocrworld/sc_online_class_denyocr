import 'package:barber_app/core.dart';



enum AlertType {
  success,
  info,
  warning,
}

Future showAlert({
  required String message,
  AlertType alertType = AlertType.success,
}) async {
  await Get.dialog(AlertTemplate(
    message: message,
    alertType: alertType,
  ));
}
