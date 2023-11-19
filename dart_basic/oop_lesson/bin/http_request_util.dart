import 'package:dio/dio.dart';

class HTTPRequestUtil {
  // membaca data dari API
  Future<List> get(String endpoint) async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/$endpoint",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  // mengirim data ke API
  Future create(String endpoint, Map data) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/$endpoint",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: data,
    );
  }
}
