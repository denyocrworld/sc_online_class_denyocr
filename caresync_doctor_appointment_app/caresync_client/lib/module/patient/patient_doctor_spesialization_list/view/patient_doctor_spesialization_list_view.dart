import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/module/patient/patient_doctor_spesialization_list/widget/patient_doctor_spesialization_item.dart';
import '../bloc/patient_doctor_spesialization_list_bloc.dart';
import '../state/patient_doctor_spesialization_list_state.dart';

class PatientDoctorSpesializationListView extends StatefulWidget {
  const PatientDoctorSpesializationListView({Key? key}) : super(key: key);

  @override
  State<PatientDoctorSpesializationListView> createState() =>
      _PatientDoctorSpesializationListViewState();
}

class _PatientDoctorSpesializationListViewState
    extends State<PatientDoctorSpesializationListView> {
  PatientDoctorSpesializationListBloc bloc =
      PatientDoctorSpesializationListBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientDoctorSpesializationListBloc>())
      GetIt.I.unregister<PatientDoctorSpesializationListBloc>();
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
      child: BlocListener<PatientDoctorSpesializationListBloc,
          PatientDoctorSpesializationListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDoctorSpesializationListBloc,
            PatientDoctorSpesializationListState>(
          builder: (context, state) {
            final bloc = context.read<PatientDoctorSpesializationListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDoctorSpesializationListBloc bloc,
    PatientDoctorSpesializationListState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientDoctorSpesializationList'),
      ),
      body: ListView.builder(
        itemCount: state.doctorList.length,
        padding: const EdgeInsets.all(20.0),
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = state.doctorList[index];
          return PatientDoctorSpesializationListItem(item: item);
        },
      ),
    );
  }
}
