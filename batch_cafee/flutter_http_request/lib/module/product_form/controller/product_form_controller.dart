import 'package:flutter/material.dart';
import 'package:flutter_http_request/core.dart';
import 'package:flutter_http_request/state_util.dart';
import '../view/product_form_view.dart';

class ProductFormController extends State<ProductFormView> {
  static late ProductFormController instance;
  late ProductFormView view;

  @override
  void initState() {
    instance = this;
    if (isEditMode) {
      productName = widget.item!["product_name"];
      price = double.parse(widget.item!["price"].toString());
    }
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  String? productName;
  double? price;

  // bool get isEditMode {
  //   return widget.item != null;
  // }

  bool get isEditMode => widget.item != null;

  save() async {
    //logic utk validasi
    if (isEditMode) {
      //mengedit
      await ProductService().update(
        id: widget.item!["id"],
        productName: productName!,
        price: price!,
      );
    } else {
      //nambahin data baru
      await ProductService().create(
        productName: productName!,
        price: price!,
      );
    }

    Get.back();
  }
}
