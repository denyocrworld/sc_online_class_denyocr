
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/product_list_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductListController extends Cubit<ProductListState> with _CubitLifecycle {
  ProductListController() : super(ProductListState());

  @override
  void initState() {
    //initState event
    super.initState();
  }

  @override
  void dispose() {
    //dispose event
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
    
      
    