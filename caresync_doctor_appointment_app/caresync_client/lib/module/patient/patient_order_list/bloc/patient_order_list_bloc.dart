import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';



class PatientOrderListBloc
    extends Bloc<PatientOrderListEvent, PatientOrderListState>
    implements IBlocBase {
  PatientOrderListBloc() : super(PatientOrderListState()) {
    on<PatientOrderListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientOrderListGetOrdersEvent>((event, emit) async {
      state.orders = await GetIt.I<OrderService>().getOrders();
      emit(state.copyWith());
    });
  }

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
}
