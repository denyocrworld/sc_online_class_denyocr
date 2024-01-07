import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
<<<<<<< HEAD
import 'package:hyper_ui/module/patient/patient_doctor_list/widget/patient_doctor_list_category.dart';
import 'package:hyper_ui/module/patient/patient_doctor_list/widget/patient_doctor_list_item.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../bloc/patient_doctor_list_bloc.dart';
import '../event/patient_doctor_list_event.dart';
import '../state/patient_doctor_list_state.dart';
=======
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870

class PatientDoctorListView extends StatefulWidget {
  PatientDoctorListView({Key? key}) : super(key: key);

  @override
  State<PatientDoctorListView> createState() => _PatientDoctorListViewState();
}

class _PatientDoctorListViewState extends State<PatientDoctorListView> {
<<<<<<< HEAD
  PatientDoctorListBloc bloc = GetIt.I<PatientDoctorListBloc>();

  @override
  void initState() {
    bloc.initState();
=======
  PatientDoctorListBloc bloc = PatientDoctorListBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientDoctorListBloc>())
      GetIt.I.unregister<PatientDoctorListBloc>();
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
      child: BlocListener<PatientDoctorListBloc, PatientDoctorListState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDoctorListBloc, PatientDoctorListState>(
          builder: (context, state) {
            final bloc = context.read<PatientDoctorListBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDoctorListBloc bloc,
    PatientDoctorListState state,
  ) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
=======
    return Container(
      color: Colors.white,
      child: Column(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PatientDoctorListCategory(
            categories: state.categories,
          ),
          SizedBox(
            height: 20.0,
          ),
<<<<<<< HEAD
          Expanded(
            child: ListView.builder(
              itemCount: state.doctorList.length,
              physics: ScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                var item = state.doctorList[index];
                return PatientDoctorListItem(item: item);
              },
            ),
=======
          ListView.builder(
            itemCount: state.doctorList.length,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = state.doctorList[index];
              return PatientDoctorListItem(item: item);
            },
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
          ),
        ],
      ),
    );
  }
}
