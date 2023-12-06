import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product/product.dart';

class ProductService extends BaseService<Product> {
  @override
  String get collectionName {
    return "products_${user!.uid}";
  }

  @override
  Product fromJson(Map<String, dynamic> data) {
    return Product.fromJson(data);
  }
}
