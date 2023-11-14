
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/cart_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class CartController extends Cubit<CartState> with _CubitLifecycle {
  CartController() : super(CartState());

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

  updateVisiblity() {
    state.visible = !state.visible;
    emit(state.copyWith()); 
  }
}
    
      
    