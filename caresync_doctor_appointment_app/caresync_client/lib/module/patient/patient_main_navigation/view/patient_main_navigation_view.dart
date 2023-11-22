import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class PatientMainNavigationView extends StatefulWidget {
  PatientMainNavigationView({Key? key}) : super(key: key);

  @override
  State<PatientMainNavigationView> createState() =>
      _PatientMainNavigationViewState();
}

class _PatientMainNavigationViewState extends State<PatientMainNavigationView> {
  PatientMainNavigationBloc bloc = PatientMainNavigationBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<PatientMainNavigationBloc>())
      GetIt.I.unregister<PatientMainNavigationBloc>();
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
      child:
          BlocListener<PatientMainNavigationBloc, PatientMainNavigationState>(
        listener: (context, state) {},
        child:
            BlocBuilder<PatientMainNavigationBloc, PatientMainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<PatientMainNavigationBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientMainNavigationBloc bloc,
    PatientMainNavigationState state,
  ) {
    /*
    TODO: Implement this @ controller
    //State
    int selectedIndex = 0;

    //Event UpdateIndex
    updateIndex(int newIndex) {
      selectedIndex = newIndex;
      setState(() {});
    }
    */
    return DefaultTabController(
      length: 3,
      initialIndex: state.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: state.selectedIndex,
          children: [
            PatientDashboardView(),
            PatientOrderListView(),
            PatientProfileView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: state.selectedIndex,
          onTap: (newIndex) => bloc.add(
            PatientMainNavigationUpdateIndexEvent(selectedIndex: newIndex),
          ),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.doctor,
              ),
              label: "Buat Janji",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.listBox,
              ),
              label: "Transaksi",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
