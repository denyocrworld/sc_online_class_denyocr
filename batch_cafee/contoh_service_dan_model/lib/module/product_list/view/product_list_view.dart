import 'package:contoh_service_dan_model/model/product.dart';
import 'package:flutter/material.dart';
import 'package:contoh_service_dan_model/core.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList"),
        actions: [
          IconButton(
            onPressed: () => controller.addProduct(),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
      // body: ListView.builder(
      //   padding: const EdgeInsets.all(20.0),
      //   itemCount: controller.products.length,
      //   physics: const ScrollPhysics(),
      //   itemBuilder: (BuildContext context, int index) {
      //     var item = controller.products[index];
      //     var product = Product.fromJson(item);
      //     return Card(
      //       child: ListTile(
      //         // title: Text(item["product_name"]),
      //         title: Text(product.productName!),
      //         // subtitle: Text("${item["price"]}"),
      //         subtitle: Text(product.price.toString()),
      //         onTap: () => controller.deleteProduct(item["id"]),
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20.0),
        itemCount: controller.productList.length,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          Product product = controller.productList[index];
          return Card(
            child: ListTile(
              // title: Text(item["product_name"]),
              title: Text(product.productName!),
              // subtitle: Text("${item["price"]}"),
              subtitle: Text(product.price.toString()),
              onTap: () => controller.deleteProduct(product.id),
            ),
          );
        },
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
