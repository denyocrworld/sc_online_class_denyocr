import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../state/product_list_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductListController extends Cubit<ProductListState>
    implements IBlocBase {
  ProductListController() : super(ProductListState());

  @override
  void initState() {
    //initState event
    getProducts();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  getProducts() async {
    state.products = await ProductService().get();
    emit(state.copyWith());
  }

  delete(int id) async {
    showLoading();
    await ProductService().delete(id);
    hideLoading();

    getProducts();
  }

  deleteAll() async {
    showLoading();
    await ProductService().deleteAll();
    hideLoading();

    getProducts();
  }
}
