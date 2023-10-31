import 'package:hyper_ui/service/doctor_service/doctor_service.dart';
import 'package:hyper_ui/service/hospital_service/hospital_service.dart';
import 'package:hyper_ui/service/specializations_service/specializations_service.dart';

void main() async {
  var response = await SpecializationsService().get();
  print(response);
}
