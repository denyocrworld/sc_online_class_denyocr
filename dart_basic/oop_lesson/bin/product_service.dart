import 'package:dio/dio.dart';

import 'http_request_util.dart';

class ProductService extends HTTPRequestUtil {
  static int timeout = 1000;

  @override
  Future<List> get(String endpoint) async {
    return [];
  }
}

// class CustomerService extends HTTPRequestUtil {}
/*
class ProductService {
  Future<List> get() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products",
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
  void create(Map data) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: data,
    );
  }
}
*/

// /*
// Budi, Tech Lead
// Bro den,
// Bikin fitur CRUD dong nama classnya UserService,
// Implementasin kontrak di CRUDService ya
// */

// abstract class CRUDService {
//   get() {}
//   create() {}
//   update() {}
//   delete() {}
// }

// /*
// Bro den,
// Bikin fitur CRUD dong nama class-nya UserService
// */

// class UserService implements CRUDService {
//   get() {}
//   create() {}
//   update() {}
//   delete() {}
// }

// /*
// Bro dwi,
// Bikin fitur CRUD dong nama class-nya BlogService
// */

// class BlogService implements CRUDService {
//   get() {}
//   create() {}
//   update() {}
//   delete() {}
// }

// /*
// Bro Fadli,
// Bikin fitur CRUD dong nama class-nya CustomerService
// */

// class CustomerService implements CRUDService {
//   get() {}
//   create() {}
//   update() {}
//   delete() {}
// }
