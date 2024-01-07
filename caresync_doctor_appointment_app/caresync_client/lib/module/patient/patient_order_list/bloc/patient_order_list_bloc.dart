import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
<<<<<<< HEAD
import '../event/patient_order_list_event.dart';
import '../state/patient_order_list_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderListBloc
    extends Bloc<PatientOrderListEvent, PatientOrderListState>
    with _BlocLifecycle {
=======



class PatientOrderListBloc
    extends Bloc<PatientOrderListEvent, PatientOrderListState>
    implements IBlocBase {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  PatientOrderListBloc() : super(PatientOrderListState()) {
    on<PatientOrderListIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });
<<<<<<< HEAD
    on<PatientOrderListGetOrdersEvent>((event, emit) {
=======
    on<PatientOrderListGetOrdersEvent>((event, emit) async {
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
      state.orders = await GetIt.I<OrderService>().getOrders();
      emit(state.copyWith());
    });
  }

  @override
  void initState() {
    //initState event
<<<<<<< HEAD
    super.initState();
=======
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }

  @override
  void dispose() {
    //dispose event
<<<<<<< HEAD
    super.dispose();
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
=======
  }

  @override
  void ready() {
    //ready event
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
  }
}
