import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_lab_test_list_bloc.dart';
import '../event/patient_lab_test_list_event.dart';
import '../state/patient_lab_test_list_state.dart';

class PatientLabTestListView extends StatefulWidget {
  const PatientLabTestListView({Key? key}) : super(key: key);

  @override
  State<PatientLabTestListView> createState() => _PatientLabTestListViewState();
}

class _PatientLabTestListViewState extends State<PatientLabTestListView> {
  PatientLabTestListBloc bloc = PatientLabTestListBloc();

  @override
  void initState() {
    bloc.initState();
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
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [],
      ),
    );
  }
}
