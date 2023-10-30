import 'package:dio/dio.dart';
import 'package:flutter_http_request/core.dart';

class AuthService {
  login() async {
    //                                            ROUTE PARAMETER => 1
    // https://capekngoding.com/demo/api/products/1

    //                                            QUERY PARAMETER => page, nilainya adalah 1
    //                                            Paging, Seraching, Sorting
    // https://capekngoding.com/demo/api/products?page=1

    //                         METHOD (Get, Post, PUt, Delete)
    var response = await Dio().post(
      //URL
      "https://capekngoding.com/demo/api/auth/login?access_token={token}",
      options: Options(
        //HEADER
        headers: {
          "Content-Type": "application/json",
          "Authorization": "Bearer ${DBService.get("token")}"
        },
      ),
      // BODY
      data: {
        "email": "admin@demo.com",
        "password": "123456",
        "token": DBService.get("token"),
      },
    );
  }
}
