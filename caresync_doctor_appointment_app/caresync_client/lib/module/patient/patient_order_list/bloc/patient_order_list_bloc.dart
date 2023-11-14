import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import '../event/patient_order_list_event.dart';
import '../state/patient_order_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderListBloc
    extends Bloc<PatientOrderListEvent, PatientOrderListState>
    with _BlocLifecycle {
  PatientOrderListBloc() : super(PatientOrderListState()) {
    on<PatientOrderListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
    on<PatientOrderListGetOrdersEvent>((event, emit) {
      state.orders = await GetIt.I<OrderService>().getOrders();
      emit(state.copyWith());
    });
  }

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
}
