import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/container/qcontainer.dart';
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
        elevation: 0.0,
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(20.0),
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32.0,
                    backgroundImage: NetworkImage(
                      "https://i.ibb.co/PGv8ZzG/me.jpg",
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Deny Ocr",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "0821-4672-7409",
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
                                      const Icon(
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
                  const SizedBox(
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
                                      const Icon(
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
                  const SizedBox(
                    height: 12.0,
                  ),
                  InkWell(
                    onTap: () => Get.offAll(LoginView()),
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
