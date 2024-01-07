import 'package:dio/dio.dart';
import 'package:hyper_ui/module/login/view/login_view.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';
import 'package:hyper_ui/state_util.dart';

class AuthService {
  static String? token;
  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "https://capekngoding.com/demo/api/auth/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );

      Map obj = response.data;
      token = obj["data"]["token"];
      if (token != null) {
        DBService.set("token", token!);
        return true;
      }
      return false;
    } on Exception catch (err) {
      return false;
    }
  }

  static bool get isLoggedIn {
    return DBService.get("token") != null;
  }

  Future logout() async {
    await DBService.clear("token");
  }
}
