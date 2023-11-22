
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/customer_form_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class CustomerFormController extends Cubit<CustomerFormState> implements IBlocBase {
  CustomerFormController() : super(CustomerFormState());

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
    
      
    