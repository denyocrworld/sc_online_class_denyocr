import 'dart:math';

import 'package:contoh_service_dan_model/model/product.dart';
import 'package:contoh_service_dan_model/model/product_response.dart';
import 'package:contoh_service_dan_model/service/product_service/product_service.dart';
import 'package:flutter/material.dart';
import 'package:contoh_service_dan_model/core.dart';
import '../view/product_list_view.dart';

class ProductListController extends State<ProductListView> {
  static late ProductListController instance;
  late ProductListView view;

  @override
  void initState() {
    instance = this;
    getProducts();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List products = [];
  List<Product> productList = [];

  getProducts() async {
    // products = await ProductService().getProducts();
    // setState(() {});

    // productList = await ProductService().getProductsWithModel();
    // setState(() {});

    ProductResponse response =
        await ProductService().getProductsWithResponseData();
    productList = response.data;
    setState(() {});
  }

  addProduct() async {
    await ProductService().addProduct(
      productName: "Product ${Random().nextInt(1000)}",
      price: Random().nextDouble(),
    );
    await getProducts();
  }

  deleteProduct(int id) async {
    await ProductService().deleteProduct(id);
    await getProducts();
  }
}
