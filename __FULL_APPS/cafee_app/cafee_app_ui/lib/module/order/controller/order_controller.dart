
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/order_state.dart';

mixin _CubitLifecycle {
  void initState() {}
  void dispose() {}
}

class OrderController extends Cubit<OrderState> with _CubitLifecycle {
  OrderController() : super(OrderState());

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
    
      
    