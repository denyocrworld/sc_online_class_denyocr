import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/product_category/product_category.dart';
import 'package:hyper_ui/service/product_service/product_service.dart';
import '../state/data_manager_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class DataManagerController extends Cubit<DataManagerState>
    implements IBlocBase {
  DataManagerController() : super(DataManagerState());

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

  resetData() async {
    ProductService().deleteAll();
    ProductCategoryService().deleteAll();
  }
}
