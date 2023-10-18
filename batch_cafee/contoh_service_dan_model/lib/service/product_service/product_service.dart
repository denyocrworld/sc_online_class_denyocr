import 'package:contoh_service_dan_model/model/product.dart';
import 'package:contoh_service_dan_model/model/product_response.dart';
import 'package:dio/dio.dart';

//Tidak ada kode yang berhubungan dengan UI
// Ngirim dan baca data saja
// x Tidak menampilkan alert, tidak melakkukan navigasi
// x Tidak ada state management

class ProductService {
  Future<List> getProducts() async {
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

  // return List of Model
  Future<List<Product>> getProductsWithModel() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    List items = obj["data"];
    // Mengonversi data menjadi List<Product>
    List<Product> products =
        items.map((item) => Product.fromJson(item)).toList();
    return products;
  }

  // return List of Model
  Future<ProductResponse> getProductsWithResponseData() async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    return ProductResponse.fromJson(response.data);
  }

  addProduct({
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

  updateProduct({
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

  deleteProduct(int id) async {
    await Dio().delete(
      "https://capekngoding.com/demo/api/products/$id",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
  }
}
