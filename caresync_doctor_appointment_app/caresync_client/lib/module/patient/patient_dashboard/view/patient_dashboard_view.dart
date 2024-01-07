<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/searchfield/searchfield.dart';
import 'package:hyper_ui/shared/widget/navigation/custom_tab_navigation/custom_tab_navigation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../bloc/patient_dashboard_bloc.dart';
import '../event/patient_dashboard_event.dart';
import '../state/patient_dashboard_state.dart';

class PatientDashboardView extends StatefulWidget {
  const PatientDashboardView({Key? key}) : super(key: key);
=======
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class PatientDashboardView extends StatefulWidget {
  PatientDashboardView({Key? key}) : super(key: key);
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870

  @override
  State<PatientDashboardView> createState() => _PatientDashboardViewState();
}

class _PatientDashboardViewState extends State<PatientDashboardView> {
  PatientDashboardBloc bloc = PatientDashboardBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<PatientDashboardBloc>())
      GetIt.I.unregister<PatientDashboardBloc>();
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
      child: BlocListener<PatientDashboardBloc, PatientDashboardState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDashboardBloc, PatientDashboardState>(
          builder: (context, state) {
            final bloc = context.read<PatientDashboardBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDashboardBloc bloc,
    PatientDashboardState state,
  ) {
<<<<<<< HEAD
    /* 
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "Pending",
              ),
              Tab(
                text: "Ongoing",
              ),
              Tab(
                text: "Done",
              ),
            ],
          ),
          title: const Text('Order List'),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.red[100],
            ),
            Container(
              color: Colors.green[100],
            ),
            Container(
              color: Colors.blue[100],
            ),
          ],
        ),
      ),
    );
    */
=======
    return Scaffold(
      body: CustomScrollView(
        physics:
            BouncingScrollPhysics(), // Menambahkan physics yang lebih smooth
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0.0,
            backgroundColor: Color(0xff0551bf),
            expandedHeight: 180.0,
            collapsedHeight: 72,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text('Stacked SliverAppBar Example'),
              expandedTitleScale: 1,
              title: SafeArea(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 12.0,
                  ),
                  child: SearchField(
                    onSubmitted: (value) => bloc.add(
                      PatientDashboardOnSearchEvent(
                        search: value,
                      ),
                    ),
                  ),
                ),
              ),
              titlePadding: EdgeInsets.all(0.0),
              background: Stack(
                children: <Widget>[
                  // Image.network(
                  //   "https://picsum.photos/2000",
                  //   fit: BoxFit.cover,
                  // ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0xff0551bf),
                          Color(0xff0551bf).withOpacity(0.9),
                          Color(0xff0551bf).withOpacity(0.8),
                          Color(0xff0551bf).withOpacity(0.7),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16,
                    right: 16,
                    top: 10,
                    child: SafeArea(
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "CareSync",
                              style: GoogleFonts.encodeSansSc(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Badge(
                            label: Text(
                              "4",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            child: Icon(
                              MdiIcons.chat,
                              color: Colors.white,
                              size: 32.0,
                            ),
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Badge(
                            label: Text(
                              "4",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 32.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    bottom: 72,
                    child: Container(
                      height: 50,
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Color(0xffee5693),
                            child: Icon(
                              MdiIcons.calendar,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Buat Janji Konsultasi",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 6.0,
                                ),
                                Text(
                                  "Proses Singkat, Bayar Cepat",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              stretchModes: <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 20.0,
              ),
              child: Container(
                child: CustomTabNavigation(
                  headers: [
                    "Dokter",
                    "Lab Test",
                    "Medical Treatment",
                  ],
                  children: [
                    PatientDoctorListView(),
                    PatientLabTestListView(),
                    PatientMedicalTreatmentListView(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
<<<<<<< HEAD
        title: const Text(
=======
        title: Text(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
          'PatientDashboard',
        ),
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(12.0),
<<<<<<< HEAD
            child: const Badge(
=======
            child: Badge(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
              label: Text(
                "4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              child: Icon(
                Icons.mail_outline,
                size: 28.0,
              ),
            ),
          ),
          CircleAvatar(
            radius: 16.0,
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
<<<<<<< HEAD
          const SizedBox(
=======
          SizedBox(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
            width: 12.0,
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
<<<<<<< HEAD
              decoration: const BoxDecoration(
=======
              decoration: BoxDecoration(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                color: Colors.blue,
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xff0351c0),
                    Color(0xff6c96de),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 20,
              right: 20,
              child: Container(
<<<<<<< HEAD
                padding: const EdgeInsets.all(12.0),
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
=======
                padding: EdgeInsets.all(12.0),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 24,
                      offset: Offset(0, 11),
                    ),
                  ],
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffee5693),
                          child: Icon(
                            MdiIcons.calendar,
                            color: Colors.white,
                          ),
                        ),
<<<<<<< HEAD
                        const SizedBox(
=======
                        SizedBox(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                          width: 12.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Buat Janji Konsultasi",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
<<<<<<< HEAD
                              const SizedBox(
=======
                              SizedBox(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                                height: 6.0,
                              ),
                              Text(
                                "Proses Singkat, Bayar Cepat",
                                style: TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
<<<<<<< HEAD
                    const SizedBox(
=======
                    SizedBox(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                      height: 12.0,
                    ),
                    SearchField(
                      onSubmitted: (value) => bloc.add(
                        PatientDashboardOnSearchEvent(
                          search: value,
                        ),
                      ),
                    ),
<<<<<<< HEAD
                    const SizedBox(
=======
                    SizedBox(
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                      height: 12.0,
                    ),
                    Container(
                      //TODO: ini tidak bisa di kasih expanded
                      height: 800.0,
                      child: CustomTabNavigation(
                        headers: [
                          "Dokter",
                          "Lab Test",
                          "Medical Treatment",
                        ],
                        children: [
                          PatientDoctorListView(),
                          PatientLabTestListView(),
                          PatientMedicalTreatmentListView(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
