
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_doctor_detail_bloc.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

class PatientDoctorDetailView extends StatefulWidget {
  const PatientDoctorDetailView({Key? key}) : super(key: key);

  @override
  State<PatientDoctorDetailView> createState() => _PatientDoctorDetailViewState();
}

class _PatientDoctorDetailViewState extends State<PatientDoctorDetailView> {
  PatientDoctorDetailBloc bloc = PatientDoctorDetailBloc();

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
      child: BlocListener<PatientDoctorDetailBloc, PatientDoctorDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDoctorDetailBloc, PatientDoctorDetailState>(
          builder: (context, state) {
            final bloc = context.read<PatientDoctorDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView( 
      BuildContext context,
      PatientDoctorDetailBloc bloc,
      PatientDoctorDetailState state,
    ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientDoctorDetail'),
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
            onPressed: () => bloc.add(PatientDoctorDetailIncrementEvent()),
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
    