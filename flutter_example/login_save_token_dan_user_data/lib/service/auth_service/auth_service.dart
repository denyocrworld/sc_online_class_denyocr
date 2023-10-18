import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login_save_token_dan_user_data/model/user/user.dart';
import 'package:login_save_token_dan_user_data/service/db_service/db_service.dart';

class AuthService {
  static bool isLoggedIn = false;
  static User? currentUser;
  static String? get token {
    return currentUser?.token;
  }

  static init() async {
    String? userJson = DBService.get("user");
    if (userJson != null) {
      currentUser = User.fromJson(jsonDecode(userJson));
      isLoggedIn = true;
    }
  }

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
      currentUser = User.fromJson(obj["data"]);
      isLoggedIn = true;
      DBService.set("user", jsonEncode(currentUser!.toJson()));
      return true;
    } on Exception {
      return false;
    }
  }

  Future logout() async {
    isLoggedIn = false;
    currentUser = null;
    await DBService.clear("user");
  }
}
