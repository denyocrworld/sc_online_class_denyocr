import 'package:dio/dio.dart';

class AuthService {
  static late int id;

  Future<bool> login({
    required String email,
    required String name,
  }) async {
    id = DateTime.now().millisecondsSinceEpoch;
    await Dio().post(
      "http://localhost:8080/login",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "id": id,
        "email": email,
        "name": name,
      },
    );
    return true;
  }
}
