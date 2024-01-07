import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/service/product_category_service/product_category_service.dart';
import '../state/product_category_crud_list_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductCategoryCrudListController
    extends Cubit<ProductCategoryCrudListState> implements IBlocBase {
  ProductCategoryCrudListController() : super(ProductCategoryCrudListState());

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

  delete(String docId) async {
    await ProductCategoryService().delete(docId);
  }

  updateSearch(String value) {
    state.search = value;
    emit(state.copyWith());
  }
}
