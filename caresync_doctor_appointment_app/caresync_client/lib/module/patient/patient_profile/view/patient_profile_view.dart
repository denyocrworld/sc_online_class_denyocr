import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/container/qcontainer.dart';
import '../bloc/patient_profile_bloc.dart';
import '../event/patient_profile_event.dart';
import '../state/patient_profile_state.dart';
=======
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870

class PatientProfileView extends StatefulWidget {
  PatientProfileView({Key? key}) : super(key: key);

  @override
  State<PatientProfileView> createState() => _PatientProfileViewState();
}

class _PatientProfileViewState extends State<PatientProfileView> {
  PatientProfileBloc bloc = PatientProfileBloc();

  @override
  void initState() {
<<<<<<< HEAD
    bloc.initState();
=======
    if (GetIt.I.isRegistered<PatientProfileBloc>())
      GetIt.I.unregister<PatientProfileBloc>();
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
      child: BlocListener<PatientProfileBloc, PatientProfileState>(
        listener: (context, state) {
          if (state.logoutSuccess) {
            Get.offAll(LoginView());
          }
        },
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
        elevation: 0.0,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              padding: EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32.0,
                    backgroundImage: NetworkImage(
                        FirebaseAuth.instance.currentUser?.photoURL ??
                            "https://i.ibb.co/S32HNjD/no-image.jpg"),
                  ),
                  SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          FirebaseAuth.instance.currentUser?.displayName ?? "-",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "${FirebaseAuth.instance.currentUser?.email ?? "-"}",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  QContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Account",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Divider(),
                        Builder(builder: (context) {
                          List items = [
                            {
                              "label": "My profile",
                              "page": LoginView(),
                            },
                            {
                              "label": "Medical record",
                              "page": LoginView(),
                            },
                            {
                              "label": "Change password",
                              "page": LoginView(),
                            },
                            {
                              "label": "Change pin",
                              "page": LoginView(),
                            }
                          ];
                          return ListView.builder(
                            itemCount: items.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              var item = items[index];
                              return InkWell(
                                onTap: () => Get.to(item["page"]),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 8.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item["label"],
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        size: 24.0,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  QContainer(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Help centre",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                        Divider(),
                        Builder(builder: (context) {
                          List items = [
                            {
                              "label": "Privacy policy",
                              "page": LoginView(),
                            },
                            {
                              "label": "TOS",
                              "page": LoginView(),
                            },
                            {
                              "label": "Contact us",
                              "page": LoginView(),
                            },
                            {
                              "label": "About us",
                              "page": LoginView(),
                            }
                          ];
                          return ListView.builder(
                            itemCount: items.length,
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              var item = items[index];
                              return InkWell(
                                onTap: () => Get.to(item["page"]),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.0,
                                    vertical: 8.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          item["label"],
                                          style: TextStyle(
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.chevron_right,
                                        size: 24.0,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  InkWell(
                    onTap: () => bloc.add(PatientProfileLogoutEvent()),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 4.0,
                        vertical: 8.0,
                      ),
                      child: Center(
                        child: Text(
                          "Logout",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
