import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../bloc/doctor_main_navigation_bloc.dart';
import '../event/doctor_main_navigation_event.dart';
import '../state/doctor_main_navigation_state.dart';

class DoctorMainNavigationView extends StatefulWidget {
  const DoctorMainNavigationView({Key? key}) : super(key: key);

  @override
  State<DoctorMainNavigationView> createState() =>
      _DoctorMainNavigationViewState();
}

class _DoctorMainNavigationViewState extends State<DoctorMainNavigationView> {
  DoctorMainNavigationBloc bloc = DoctorMainNavigationBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<DoctorMainNavigationBloc>())
      GetIt.I.unregister<DoctorMainNavigationBloc>();
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
      child: BlocListener<DoctorMainNavigationBloc, DoctorMainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<DoctorMainNavigationBloc, DoctorMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<DoctorMainNavigationBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    DoctorMainNavigationBloc bloc,
    DoctorMainNavigationState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DoctorMainNavigation'),
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
            onPressed: () => bloc.add(DoctorMainNavigationIncrementEvent()),
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
