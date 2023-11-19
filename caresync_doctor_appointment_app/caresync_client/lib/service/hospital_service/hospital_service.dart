import 'package:hyper_ui/service/api_service/api_service.dart';

class HospitalService extends ApiService {
  @override
  String get endpoint => "hospitals";
}

/*
Service x
BLoc
- Ngambil data dari service (List|Map)
- Mengubah-nya menjadi model ListOfModel
*/
