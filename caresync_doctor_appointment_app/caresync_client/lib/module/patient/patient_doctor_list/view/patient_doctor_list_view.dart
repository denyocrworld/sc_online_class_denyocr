import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class PatientDoctorListView extends StatefulWidget {
  PatientDoctorListView({Key? key}) : super(key: key);

  @override
  State<PatientDoctorListView> createState() => _PatientDoctorListViewState();
}

class _PatientDoctorListViewState extends State<PatientDoctorListView> {
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
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          PatientDoctorListCategory(
            categories: state.categories,
          ),
          SizedBox(
            height: 20.0,
          ),
          ListView.builder(
            itemCount: state.doctorList.length,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = state.doctorList[index];
              return PatientDoctorListItem(item: item);
            },
          ),
        ],
      ),
    );
  }
}
