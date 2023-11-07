import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/shared/widget/container/qcontainer.dart';
import '../bloc/patient_order_detail_bloc.dart';
import '../event/patient_order_detail_event.dart';
import '../state/patient_order_detail_state.dart';

class PatientOrderDetailView extends StatefulWidget {
  PatientOrderDetailView({
    Key? key,
  }) : super(key: key);

  @override
  State<PatientOrderDetailView> createState() => _PatientOrderDetailViewState();
}

class _PatientOrderDetailViewState extends State<PatientOrderDetailView> {
  // PatientOrderDetailBloc bloc = PatientOrderDetailBloc();

  @override
  void initState() {
    // bloc.initState();
    super.initState();
  }

  @override
  void dispose() {
    // bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //   return BlocProvider(
    //     create: (BuildContext context) => bloc,
    //     child: BlocListener<PatientOrderDetailBloc, PatientOrderDetailState>(
    //       listener: (context, state) {},
    //       child: BlocBuilder<PatientOrderDetailBloc, PatientOrderDetailState>(
    //         builder: (context, state) {
    //           final bloc = context.read<PatientOrderDetailBloc>();
    //           return buildView(context, bloc, state);
    //         },
    //       ),
    //     ),
    //   );
    // return BlocListener<PatientOrderDetailBloc, PatientOrderDetailState>(
    //   listener: (context, state) {},
    //   child: BlocBuilder<PatientOrderDetailBloc, PatientOrderDetailState>(
    //     builder: (context, state) {
    //       final bloc = context.read<PatientOrderDetailBloc>();
    //       return buildView(context, bloc, state);
    //     },
    //   ),
    // );
    // return BlocBuilder<PatientOrderDetailBloc, PatientOrderDetailState>(
    //     builder: (context, state) {
    //   return Scaffold(
    //     appBar: AppBar(
    //       title: Text("Dashboard"),
    //       actions: [],
    //     ),
    //     body: SingleChildScrollView(
    //       child: Container(
    //         padding: EdgeInsets.all(20.0),
    //         child: Column(
    //           children: [],
    //         ),
    //       ),
    //     ),
    //   );
    // });
    return MultiBlocProvider(
      providers: [
        BlocProvider<PatientOrderDetailBloc>(
          create: (BuildContext context) => PatientOrderDetailBloc(),
        ),
      ],
      child: BlocListener<PatientOrderDetailBloc, PatientOrderDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientOrderDetailBloc, PatientOrderDetailState>(
          builder: (context, state) {
            final bloc = context.read<PatientOrderDetailBloc>();
            // final patientDoctorDetailBloc =
            //     context.read<PatientDoctorDetailBloc>();
            // final patientDoctorDetailBloc =
            //     context.read<PatientDoctorDetailBloc>();

            GetIt getIt = GetIt.instance;
            final patientDoctorDetailBloc = getIt<PatientDoctorDetailBloc>();

            return Scaffold(
              appBar: AppBar(
                title:
                    Text("${patientDoctorDetailBloc.state.doctor?.doctorName}"),
                actions: [],
              ),
              body: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                          "${patientDoctorDetailBloc.state.doctor?.doctorName}"),
                      Text("${patientDoctorDetailBloc.state.counter}"),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientOrderDetailBloc bloc,
    PatientOrderDetailState state,
  ) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            BlocBuilder<PatientDoctorDetailBloc, PatientDoctorDetailState>(
                builder: (context, state) {
              final patientDoctorDetailBloc =
                  context.read<PatientDoctorDetailBloc>();

              return QContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selected doctor",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 24.0,
                        backgroundImage: NetworkImage(
                          "https://i.ibb.co/PGv8ZzG/me.jpg",
                        ),
                      ),
                      minLeadingWidth: 0.0,
                      contentPadding: EdgeInsets.all(0.0),
                      title: Text(
                          patientDoctorDetailBloc.state.doctor!.doctorName!),
                      subtitle: Text(
                        "Dokter Konservasi Gigi",
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://images.unsplash.com/photo-1586773860418-d37222d8fce3?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGhvc3BpdGFsfGVufDB8fDB8fHww",
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              8.0,
                            ),
                          ),
                        ),
                      ),
                      minLeadingWidth: 0.0,
                      contentPadding: EdgeInsets.all(0.0),
                      title: Text("RS Miami Dramaga Bogor"),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Dokter Konservasi Gigi",
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Senin, 16 October 2023",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Consultation fee Rp100.000",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: warningColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            SizedBox(
              height: 12.0,
            ),
            QContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Data pemesanan",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Your mobile number",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "082146727409",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Your email",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "denyocr.world@gmail.com",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "Full name",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "Deniansyah",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.all(12.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 42,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: warningColor,
            ),
            onPressed: () {},
            child: Text("Continue"),
          ),
        ),
      ),
    );
  }
}
