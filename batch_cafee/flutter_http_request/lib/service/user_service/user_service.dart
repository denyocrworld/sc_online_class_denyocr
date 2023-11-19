import 'package:dio/dio.dart';
import 'package:flutter_http_request/model/user.dart';
import 'package:flutter_http_request/model/user_response.dart';

class UserService {
  Future<List> getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  Future<List<User>> getUsersWithWithUserModelList() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    List items = response.data["data"];
    List<User> users = [];
    for (var item in items) {
      users.add(User.fromJson(item));
    }
    return users;
  }

  Future<UserResponse> getUsersWithModel() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    return UserResponse.fromJson(response.data);
  }
}
