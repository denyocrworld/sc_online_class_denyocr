import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/bloc/patient_doctor_detail_bloc.dart';
import 'package:hyper_ui/service/order_service/order_service.dart';
import '../event/patient_order_payment_event.dart';
import '../state/patient_order_payment_state.dart';

mixin _BlocLifecycle {
  void initState() {}
  void dispose() {}
}

class PatientOrderPaymentBloc
    extends Bloc<PatientOrderPaymentEvent, PatientOrderPaymentState>
    with _BlocLifecycle {
  PatientOrderPaymentBloc() : super(PatientOrderPaymentState()) {
    on<PatientOrderPaymentIncrementEvent>((event, emit) {
      state.counter++;
      emit(state.copyWith());
    });

    on<PatientOrderPaymentLoadEvent>((event, emit) async {
      print("Request Payment Link");
      var bloc = GetIt.I<PatientDoctorDetailBloc>();
      var data = await OrderService().createPaymentLink(
        scheduleId: bloc.state.schedule!.id!,
      );
      state.paymentUrl = data["payment_url"];
      emit(state.copyWith());
      print(data);
      print("Request Payment Link Done");
    });
  }

  @override
  void initState() {
    //initState event
    add(PatientOrderPaymentLoadEvent());
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
