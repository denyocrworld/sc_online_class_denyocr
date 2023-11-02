import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/model/patient_doctor_detail_schedule_list.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/widget/more_text_example.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/widget/patient_doctor_detail_schedules.dart';
import 'package:hyper_ui/shared/widget/expansion_panel/expansion_panel.dart';
import '../bloc/patient_doctor_detail_bloc.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

class PatientDoctorDetailView extends StatefulWidget {
  final Doctor item;
  PatientDoctorDetailView({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<PatientDoctorDetailView> createState() =>
      _PatientDoctorDetailViewState();
}

class _PatientDoctorDetailViewState extends State<PatientDoctorDetailView> {
  PatientDoctorDetailBloc bloc = PatientDoctorDetailBloc();

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
      child: BlocListener<PatientDoctorDetailBloc, PatientDoctorDetailState>(
        listener: (context, state) {},
        child: BlocBuilder<PatientDoctorDetailBloc, PatientDoctorDetailState>(
          builder: (context, state) {
            final bloc = context.read<PatientDoctorDetailBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    PatientDoctorDetailBloc bloc,
    PatientDoctorDetailState state,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Doctor Profile'),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200]!,
                      blurRadius: 24,
                      offset: Offset(0, 24),
                    ),
                  ],
                  border: Border(
                    bottom: BorderSide(
                      width: 1.0,
                      color: Colors.grey[300]!,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 32.0,
                          backgroundImage: NetworkImage(
                            widget.item.photo ??
                                "https://i.ibb.co/S32HNjD/no-image.jpg",
                          ),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.item.doctorName ?? "-",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                widget.item.specialization
                                        ?.specializationName ??
                                    "-",
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    PatientDoctorDetaulSchedules(
                      doctor: widget.item,
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            8.0,
                          ),
                        ),
                        border: Border.all(
                          width: 1.0,
                          color: Colors.grey[200]!,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 24,
                            offset: Offset(0, 11),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Doctor Profile",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          MoreTextExample(
                            text: widget.item.description ?? "-",
                            style: TextStyle(
                              color: textColor,
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    QExpansionPanel(
                      title: "Medical Treatment",
                      expanded: true,
                      children: [
                        MoreTextExample(
                          text: widget.item.medicalTreatment ?? "-",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    QExpansionPanel(
                      title: "Practical Experience",
                      expanded: true,
                      children: [
                        MoreTextExample(
                          text: widget.item.practicalExperience ?? "-",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    QExpansionPanel(
                      title: "Educational Background",
                      expanded: true,
                      children: [
                        MoreTextExample(
                          text: widget.item.educationalBackground ?? "-",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
