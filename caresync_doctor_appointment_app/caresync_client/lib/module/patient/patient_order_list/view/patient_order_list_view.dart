import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/patient_order_list_bloc.dart';
import '../event/patient_order_list_event.dart';
import '../state/patient_order_list_state.dart';

class PatientOrderListView extends StatefulWidget {
  const PatientOrderListView({Key? key}) : super(key: key);

  @override
  State<PatientOrderListView> createState() => _PatientOrderListViewState();
}

class _PatientOrderListViewState extends State<PatientOrderListView> {
  PatientOrderListBloc bloc = PatientOrderListBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientOrderListBloc>())
      GetIt.I.unregister<PatientOrderListBloc>();
    GetIt.I.registerSingleton(bloc);
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
      child: BlocListener<PatientOrderListBloc, PatientOrderListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderListBloc, PatientOrderListState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderListBloc bloc,
    PatientOrderListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientOrderList'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Counter: ${state.counter}',
            style: const TextStyle(fontSize: 24),
          ),
          IconButton(
            onPressed: () => bloc.add(PatientOrderListIncrementEvent()),
            icon: const Icon(
              Icons.add,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
