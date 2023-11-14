import 'package:dio/dio.dart';

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

  //go_router
  //navigator2
  //autoroute

  Future create({
    required String productName,
    required double price,
  }) async {
    await Dio().post(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": productName,
        "price": price,
      },
    );
  }

  Future update({
    required int id,
    required String productName,
    required double price,
  }) async {
    await Dio().put(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
      data: {
        "product_name": productName,
        "price": price,
      },
    );
  }

  Future delete(int id) async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }

  Future deleteAll() async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/products/action/delete-all",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}

// void main() async {
//   await ProductService().deleteAll();

//   await ProductService().create(
//     productName: "TEH GELAS OT",
//     price: 125,
//   );

//   List products = await ProductService().get();
//   print(products.length);

//   await ProductService().update(
//     id: products.first["id"],
//     productName: "AQUA GELAS",
//     price: 125,
//   );

//   List products2 = await ProductService().get();
//   print(products2.first);
//   await ProductService().delete(products.first["id"]);

//   List products3 = await ProductService().get();
//   print(products3.length);
// }
