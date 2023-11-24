import 'package:dio/dio.dart';

class ApiService {
  String endpoint = "samples";
  String baseUrl = "http://192.168.1.4:8000/api";
  // String baseUrl = "http://localhost:8000/api";

  Future<List<Map<String, dynamic>>> get({
    String search = "",
  }) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/$endpoint?search=$search';
    print(url);

    try {
      print("url: $url");
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
      print(response.statusCode);
      if (response.data['data'] == []) return [];
      return List<Map<String, dynamic>>.from(response.data['data']);
    } catch (e) {
      print("ERROR");
      print(e);
      throw e;
    }
  }

  Future<Map<String, dynamic>> getById(int id) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/$endpoint/$id';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> create(Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/$endpoint';

    try {
      final response = await dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> update(int id, Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/$endpoint/$id';

    try {
      final response = await dio.put(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<void> delete(int id) async {
    final Dio dio = Dio();
    final String url = '$baseUrl/$endpoint/$id';

    try {
      await dio.delete(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } catch (e) {
      throw e;
    }
  }
}
