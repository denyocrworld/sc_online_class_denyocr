import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
=======
import 'package:get_it/get_it.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
import '../bloc/doctor_profile_bloc.dart';
import '../event/doctor_profile_event.dart';
import '../state/doctor_profile_state.dart';

class DoctorProfileView extends StatefulWidget {
  const DoctorProfileView({Key? key}) : super(key: key);

  @override
  State<DoctorProfileView> createState() => _DoctorProfileViewState();
}

class _DoctorProfileViewState extends State<DoctorProfileView> {
  DoctorProfileBloc bloc = DoctorProfileBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<DoctorProfileBloc>())
      GetIt.I.unregister<DoctorProfileBloc>();
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
      child: BlocListener<DoctorProfileBloc, DoctorProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<DoctorProfileBloc, DoctorProfileState>(
          builder: (context, state) {
            final bloc = context.read<DoctorProfileBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DoctorProfileBloc bloc,
    DoctorProfileState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DoctorProfile'),
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
            onPressed: () => bloc.add(DoctorProfileIncrementEvent()),
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
