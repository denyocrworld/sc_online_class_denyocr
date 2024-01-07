import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/service/api_service/api_service.dart';
import 'package:injectable/injectable.dart';

<<<<<<< HEAD
=======
List<Doctor> tempDoctorList = [];

>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
@singleton
class DoctorService extends ApiService {
  @override
  String get endpoint => "doctors";

  Future<List<Doctor>> getDoctors({
    String search = "",
  }) async {
<<<<<<< HEAD
=======
    if (tempDoctorList.isNotEmpty) return tempDoctorList;
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
    List items = await get(
      search: search,
    );
    List<Doctor> doctors = items.map((item) => Doctor.fromJson(item)).toList();
<<<<<<< HEAD
=======
    tempDoctorList = doctors;
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
    return doctors;
  }
}
