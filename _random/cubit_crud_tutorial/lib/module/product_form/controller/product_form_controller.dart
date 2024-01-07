import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../state/product_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductFormController extends Cubit<ProductFormState>
    implements IBlocBase {
  ProductFormController() : super(ProductFormState());

  @override
  void initState() {
    //initState event
    if (state.isEditMode) {
      state.id = state.item!["id"];
      state.photo = state.item!["photo"];
      state.productName = state.item!["product_name"];
      state.price = double.parse(state.item!["price"].toString());
      state.categoryName = state.item!["category_name"];
    }
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  changeToEditMode(Map editedItem) {
    state.isEditMode = true;
    state.item = editedItem;
  }

  save() async {
    showLoading();
    if (state.isEditMode) {
      await ProductService().update(state.id!, {
        "photo": state.photo,
        "product_name": state.productName,
        "price": state.price,
        "category_name": state.categoryName,
      });
    } else {
      await ProductService().create({
        "photo": state.photo,
        "product_name": state.productName,
        "price": state.price,
        "category_name": state.categoryName,
      });
    }
    hideLoading();
    Get.back();
  }
}
