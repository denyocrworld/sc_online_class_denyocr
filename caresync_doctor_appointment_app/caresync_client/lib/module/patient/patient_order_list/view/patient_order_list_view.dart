import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/patient/patient_order_list/widget/patient_order_list_item.dart';
import '../../../../model/doctor/doctor.dart';
import '../../../../model/doctor/specialization.dart';
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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchField(
              onSubmitted: (search) {},
            ),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return PatientOrderListItem(
                    item: Doctor(
                      id: 1,
                      photo: "https://i.ibb.co/PGv8ZzG/me.jpg",
                      doctorName: "Andre",
                      specialization: Specialization(
                        specializationName: "Dokter Mata",
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
