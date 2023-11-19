import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/module/patient/patient_doctor_list/widget/patient_doctor_list_item.dart';
import 'package:hyper_ui/module/patient/patient_doctor_spesialization_list/widget/patient_doctor_spesialization_item.dart';
import '../bloc/patient_doctor_spesialization_list_bloc.dart';
import '../event/patient_doctor_spesialization_list_event.dart';
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
