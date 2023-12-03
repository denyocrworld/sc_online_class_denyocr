import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/service/order_service/order_service.dart';
import 'package:hyper_ui/service/payment_service/payment_service.dart';
import '../state/pos_payment_state.dart';
import 'package:hyper_ui/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class PosPaymentController extends Cubit<PosPaymentState> implements IBlocBase {
  PosPaymentController() : super(PosPaymentState());

  @override
  void initState() {
    //initState event
    getPaymentLink();
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  getPaymentLink() async {
    var posController = GetIt.I<PosController>();
    var products = posController.state.products;
    double total = posController.total;

    String? paymentUrl = await PaymentService().createPaymentLink(
      products: products,
      total: total,
    );

    if (paymentUrl != null) {
      state.paymentUrl = paymentUrl;
    }
    emit(state.copyWith());
  }

  Future<bool> createOrder() async {
    var posController = GetIt.I<PosController>();
    var products = posController.state.products;
    double total = posController.total;

    return await OrderService().create(
      products: products,
      total: total,
      status: "Payment success",
    );
  }
}
