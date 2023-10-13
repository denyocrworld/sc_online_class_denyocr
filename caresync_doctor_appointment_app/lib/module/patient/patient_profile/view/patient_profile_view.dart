
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/patient_profile_bloc.dart';
import '../event/patient_profile_event.dart';
import '../state/patient_profile_state.dart';

class PatientProfileView extends StatefulWidget {
  const PatientProfileView({Key? key}) : super(key: key);

  @override
  State<PatientProfileView> createState() => _PatientProfileViewState();
}

class _PatientProfileViewState extends State<PatientProfileView> {
  PatientProfileBloc bloc = PatientProfileBloc();

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
      child: BlocListener<PatientProfileBloc, PatientProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientProfileBloc, PatientProfileState>(
          builder: (context, state) {
            final bloc = context.read<PatientProfileBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView( 
      BuildContext context,
      PatientProfileBloc bloc,
      PatientProfileState state,
    ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatientProfile'),
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
            onPressed: () => bloc.add(PatientProfileIncrementEvent()),
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
    