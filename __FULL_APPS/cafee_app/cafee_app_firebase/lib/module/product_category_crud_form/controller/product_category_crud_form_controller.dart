import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product_category/product_category.dart';
import 'package:hyper_ui/service/product_category_service/product_category_service.dart';
import '../state/product_category_crud_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductCategoryCrudFormController
    extends Cubit<ProductCategoryCrudFormState> implements IBlocBase {
  ProductCategoryCrudFormController() : super(ProductCategoryCrudFormState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }

  setEditMode(ProductCategory? productCategory) {
    if (productCategory == null) return;

    state.isEditMode = true;
    state.id = productCategory.id;
    state.productCategoryName = productCategory.productCategoryName;
  }

  Future<bool> save() async {
    if (state.isEditMode) {
      return await ProductCategoryService().update(
        state.id!,
        ProductCategory(
          id: state.id,
          productCategoryName: state.productCategoryName,
        ),
      );
    } else {
      var id = Uuid().v4();
      return await ProductCategoryService().create(
        id,
        ProductCategory(
          id: id,
          productCategoryName: state.productCategoryName,
        ),
      );
    }
  }
}
