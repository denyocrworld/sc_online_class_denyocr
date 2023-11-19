import 'package:dio/dio.dart';

//ALT+T
class AuthService {
  login({
    required String email,
    required String password,
  }) async {
    var response = await Dio().post(
      "https://reqres.in/api/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        // "email": "eve.holt@reqres.in",
        // "password": "cityslicka",
        "email": email,
        "password": password,
      },
    );
    return response.data;
  }
}
