import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../state/product_crud_list_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductCrudListController extends Cubit<ProductCrudListState>
    implements IBlocBase {
  ProductCrudListController() : super(ProductCrudListState());

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
    await ProductService().delete(docId);
  }

  updateSearch(String value) {
    state.search = value;
    emit(state.copyWith());
  }
}
