import 'package:contoh_service_dan_model/service/product_service/product_service.dart';

void main() async {
  final productService = ProductService();
  final products = await productService.getProducts();
  print(products);
}
