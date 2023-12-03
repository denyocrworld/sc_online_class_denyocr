
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/product_detail_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class ProductDetailController extends Cubit<ProductDetailState> with _CubitLifecycle {
  ProductDetailController() : super(ProductDetailState());

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
    
      
    