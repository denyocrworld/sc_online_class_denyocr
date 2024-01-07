import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/shared/theme/theme_config.dart';
import '../bloc/under_maintenance_bloc.dart';
import '../event/under_maintenance_event.dart';
=======
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import '../bloc/under_maintenance_bloc.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
import '../state/under_maintenance_state.dart';

class UnderMaintenanceView extends StatefulWidget {
  const UnderMaintenanceView({Key? key}) : super(key: key);

  @override
  State<UnderMaintenanceView> createState() => _UnderMaintenanceViewState();
}

class _UnderMaintenanceViewState extends State<UnderMaintenanceView> {
  UnderMaintenanceBloc bloc = UnderMaintenanceBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<UnderMaintenanceBloc>())
      GetIt.I.unregister<UnderMaintenanceBloc>();
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
      child: BlocListener<UnderMaintenanceBloc, UnderMaintenanceState>(
        listener: (context, state) {},
        child: BlocBuilder<UnderMaintenanceBloc, UnderMaintenanceState>(
          builder: (context, state) {
            final bloc = context.read<UnderMaintenanceBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    UnderMaintenanceBloc bloc,
    UnderMaintenanceState state,
  ) {
<<<<<<< HEAD
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.0,
            ),
            Icon(Icons.construction, size: 64.0, color: warningColor),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              "Under Maintenance",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: warningColor,
              ),
            )
          ],
        ),
=======
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 100.0,
          ),
          Icon(Icons.construction, size: 64.0, color: warningColor),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            "Under Maintenance",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: warningColor,
            ),
          )
        ],
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
      ),
    );
  }
}
