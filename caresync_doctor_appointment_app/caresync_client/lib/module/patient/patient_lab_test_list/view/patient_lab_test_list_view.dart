import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import '../bloc/patient_lab_test_list_bloc.dart';
import '../event/patient_lab_test_list_event.dart';
import '../state/patient_lab_test_list_state.dart';

class PatientLabTestListView extends StatefulWidget {
  const PatientLabTestListView({Key? key}) : super(key: key);

  @override
  State<PatientLabTestListView> createState() => _PatientLabTestListViewState();
}

class _PatientLabTestListViewState extends State<PatientLabTestListView> {
  PatientLabTestListBloc bloc = GetIt.I<PatientLabTestListBloc>();

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
      child: BlocListener<PatientLabTestListBloc, PatientLabTestListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientLabTestListBloc, PatientLabTestListState>(
          builder: (context, state) {
            final bloc = context.read<PatientLabTestListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientLabTestListBloc bloc,
    PatientLabTestListState state,
  ) {
    return UnderMaintenanceView();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}
