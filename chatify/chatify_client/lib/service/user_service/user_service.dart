import 'package:dio/dio.dart';

class UserService {
  Future<List> getUsers() async {
    var response = await Dio().get(
      "http://localhost:8080/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }
}
