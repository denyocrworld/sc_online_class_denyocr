import 'package:dio/dio.dart';
import 'package:flutter_tab_navigation/model/book_response.dart';

class BookService {
  Future<BookResponse?> getBooks({
    String? query = "trees",
  }) async {
    try {
      var response = await Dio().get(
        "https://demo.dataverse.org/api/search?q=$query",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
      );
      return BookResponse.fromJson(response.data);
    } on Exception catch (err) {
      print(err);
    }
    return null;
  }
}
