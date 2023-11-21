import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/step_navigation/step_navigation.dart';
import '../bloc/patient_order_bloc.dart';
import '../event/patient_order_event.dart';
import '../state/patient_order_state.dart';

//Widget Test
// x HTTP Request
// 400

// Mock
//   Response List | Map

class PatientOrderView extends StatefulWidget {
  const PatientOrderView({Key? key}) : super(key: key);

  @override
  State<PatientOrderView> createState() => _PatientOrderViewState();
}

class _PatientOrderViewState extends State<PatientOrderView> {
  PatientOrderBloc bloc = GetIt.I<PatientOrderBloc>();

  @override
  void initState() {
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
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
      child: BlocListener<PatientOrderBloc, PatientOrderState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderBloc, PatientOrderState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderBloc bloc,
    PatientOrderState state,
  ) {
    return Scaffold(
      body: StepNavigation(
        initialIndex: 1,
        navigations: [
          "Select doctor",
          "Order detail",
          "Patient data",
          "Payment",
        ],
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),
          PatientOrderDetailView(),
          PatientOrderPatientDataView(),
          PatientOrderPaymentView(),
        ],
      ),
    );
  }
}
