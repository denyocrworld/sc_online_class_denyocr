import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/shared/theme/theme_config.dart';
import '../bloc/patient_order_payment_bloc.dart';
import '../event/patient_order_payment_event.dart';
import '../state/patient_order_payment_state.dart';
=======
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class PatientOrderPaymentView extends StatefulWidget {
  const PatientOrderPaymentView({Key? key}) : super(key: key);

  @override
  State<PatientOrderPaymentView> createState() =>
      _PatientOrderPaymentViewState();
}

class _PatientOrderPaymentViewState extends State<PatientOrderPaymentView> {
  PatientOrderPaymentBloc bloc = PatientOrderPaymentBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<PatientOrderPaymentBloc>())
      GetIt.I.unregister<PatientOrderPaymentBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<PatientOrderPaymentBloc, PatientOrderPaymentState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderPaymentBloc, PatientOrderPaymentState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderPaymentBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderPaymentBloc bloc,
    PatientOrderPaymentState state,
  ) {
    return Scaffold(
      body: state.paymentUrl == null
          ? Container()
          : InAppWebView(
<<<<<<< HEAD
              initialUrlRequest: URLRequest(
                url: Uri.parse(state.paymentUrl!),
              ),
=======
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  useShouldOverrideUrlLoading: true,
                ),
              ),
              initialUrlRequest: URLRequest(
                url: Uri.parse(state.paymentUrl!),
              ),

              shouldOverrideUrlLoading: (controller, navigationAction) async {
                final url = navigationAction.request.url.toString();

                if (url.contains("example.com")) {
                  // This one means do not navigate
                  Get.offAll(PatientMainNavigationView());
                  snackbarPrimary(message: "Transaksi berhasil");
                  return NavigationActionPolicy.CANCEL;
                }

                // This one means navigate
                return NavigationActionPolicy.ALLOW;
              },
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
              // http payment link success
              // redirect ke dashboard
              // snackbar (Payment berhasil)
            ),
      // bottomNavigationBar: Container(
      //   color: Colors.white,
      //   padding: EdgeInsets.all(12.0),
      //   child: Container(
      //     width: MediaQuery.of(context).size.width,
      //     height: 42,
      //     child: ElevatedButton(
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: warningColor,
      //       ),
      //       onPressed: () {},
      //       child: const Text("Checkout"),
      //     ),
      //   ),
      // ),
    );
  }
}
