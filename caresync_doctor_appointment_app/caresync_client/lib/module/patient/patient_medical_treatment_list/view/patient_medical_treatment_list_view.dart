import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/module/custom/under_maintenance/view/under_maintenance_view.dart';
import '../bloc/patient_medical_treatment_list_bloc.dart';
import '../event/patient_medical_treatment_list_event.dart';
=======
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/module/custom/under_maintenance/view/under_maintenance_view.dart';
import '../bloc/patient_medical_treatment_list_bloc.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
import '../state/patient_medical_treatment_list_state.dart';

class PatientMedicalTreatmentListView extends StatefulWidget {
  const PatientMedicalTreatmentListView({Key? key}) : super(key: key);

  @override
  State<PatientMedicalTreatmentListView> createState() =>
      _PatientMedicalTreatmentListViewState();
}

class _PatientMedicalTreatmentListViewState
    extends State<PatientMedicalTreatmentListView> {
<<<<<<< HEAD
  PatientMedicalTreatmentListBloc bloc = PatientMedicalTreatmentListBloc();

  @override
  void initState() {
    bloc.initState();
=======
  PatientMedicalTreatmentListBloc bloc =
      PatientMedicalTreatmentListBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientMedicalTreatmentListBloc>())
      GetIt.I.unregister<PatientMedicalTreatmentListBloc>();
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
      child: BlocListener<PatientMedicalTreatmentListBloc,
          PatientMedicalTreatmentListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientMedicalTreatmentListBloc,
            PatientMedicalTreatmentListState>(
          builder: (context, state) {
            final bloc = context.read<PatientMedicalTreatmentListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientMedicalTreatmentListBloc bloc,
    PatientMedicalTreatmentListState state,
  ) {
    return UnderMaintenanceView();

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [],
      ),
    );
  }
}
