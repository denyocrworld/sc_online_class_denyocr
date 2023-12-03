import 'package:doctor_appointment_app/core.dart';

class AdminApi {
  static Future getAdminUid() async {
    var snapshot = await FirebaseFirestore.instance.collection(collection.adminCollection).get();
    return snapshot.docs[0]["uid"];
  }
}
