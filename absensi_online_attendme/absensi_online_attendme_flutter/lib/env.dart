import 'core.dart';

class Env {
  static String baseUrl = "http://192.168.1.7:8000";
  // static String baseUrl = "http://103.175.220.92:8000";

  static Options get options {
    return Options(
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${AuthService.token}",
      },
    );
  }
}
