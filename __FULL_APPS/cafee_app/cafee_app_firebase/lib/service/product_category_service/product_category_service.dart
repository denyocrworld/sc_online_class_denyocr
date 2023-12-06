import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product_category/product_category.dart';

class ProductCategoryService extends BaseService<ProductCategory> {
  @override
  String get collectionName {
    return "product_categories_${user!.uid}";
  }

  @override
  ProductCategory fromJson(Map<String, dynamic> data) {
    return ProductCategory.fromJson(data);
  }
}
