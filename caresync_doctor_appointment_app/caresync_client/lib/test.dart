import 'package:hyper_ui/service/doctor_service/doctor_service.dart';

void main() async {
  var response = await DoctorService().getDoctors(
    search: "Ch",
  );
  print(response);
}
