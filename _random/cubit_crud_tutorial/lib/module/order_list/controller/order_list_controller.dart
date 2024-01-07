
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/order_list_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class OrderListController extends Cubit<OrderListState> implements IBlocBase {
  OrderListController() : super(OrderListState());

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
}
    
      
    