import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
=======
import 'package:get_it/get_it.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
import '../bloc/doctor_dashboard_bloc.dart';
import '../event/doctor_dashboard_event.dart';
import '../state/doctor_dashboard_state.dart';

class DoctorDashboardView extends StatefulWidget {
  const DoctorDashboardView({Key? key}) : super(key: key);

  @override
  State<DoctorDashboardView> createState() => _DoctorDashboardViewState();
}

class _DoctorDashboardViewState extends State<DoctorDashboardView> {
  DoctorDashboardBloc bloc = DoctorDashboardBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<DoctorDashboardBloc>())
      GetIt.I.unregister<DoctorDashboardBloc>();
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
      child: BlocListener<DoctorDashboardBloc, DoctorDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<DoctorDashboardBloc, DoctorDashboardState>(
          builder: (context, state) {
            final bloc = context.read<DoctorDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DoctorDashboardBloc bloc,
    DoctorDashboardState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DoctorDashboard'),
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
            onPressed: () => bloc.add(DoctorDashboardIncrementEvent()),
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
