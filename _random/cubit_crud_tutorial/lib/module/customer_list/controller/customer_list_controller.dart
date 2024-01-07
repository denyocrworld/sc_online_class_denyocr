
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/customer_list_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class CustomerListController extends Cubit<CustomerListState> implements IBlocBase {
  CustomerListController() : super(CustomerListState());

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
    
      
    