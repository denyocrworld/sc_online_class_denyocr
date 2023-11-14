import 'package:flutter/material.dart';
import 'package:flutter_http_request/core.dart';
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
  getProducts() async {
    products = await ProductService().get();
    //Non Observable State
    //State yang rebuildnya manual harus memanggil method
    setState(() {});
    //provider
    // notifyListeners();
    // //getx
    // update();
    // //bloc
    // emit();
  }

  deleteProduct(int id) async {
    await ProductService().delete(id);
    await getProducts();
  }
}
