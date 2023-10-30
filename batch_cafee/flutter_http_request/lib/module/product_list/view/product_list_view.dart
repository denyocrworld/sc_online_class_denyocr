import 'package:flutter/material.dart';
import 'package:flutter_http_request/core.dart';
import 'package:flutter_http_request/state_util.dart';
import '../controller/product_list_controller.dart';

class ProductListView extends StatefulWidget {
  // final int categoryId;
  const ProductListView({Key? key}) : super(key: key);

  Widget build(context, ProductListController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductList"),
        actions: const [],
      ),
      body: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          mainAxisSpacing: 6,
          crossAxisSpacing: 6,
        ),
        itemCount: controller.products.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.products[index];
          return InkWell(
            onTap: () async {
              await Get.to(ProductFormView(
                item: item,
              ));
              controller.getProducts();
            },
            child: Container(
              color: Colors.yellow[300],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${item["product_name"]}",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    "${item["price"]}",
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.red,
                    ),
                  ),
                  IconButton(
                    onPressed: () => controller.deleteProduct(item["id"]),
                    icon: const Icon(
                      Icons.cancel,
                      size: 24.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          await Get.to(const ProductFormView());
          controller.getProducts();
        },
      ),
    );
  }

  @override
  State<ProductListView> createState() => ProductListController();
}
