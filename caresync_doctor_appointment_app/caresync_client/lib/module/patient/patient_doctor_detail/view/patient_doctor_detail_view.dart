import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/widget/more_text_example.dart';
import 'package:hyper_ui/shared/widget/expansion_panel/expansion_panel.dart';
import '../bloc/patient_doctor_detail_bloc.dart';
import '../event/patient_doctor_detail_event.dart';
import '../state/patient_doctor_detail_state.dart';

class PatientDoctorDetailView extends StatefulWidget {
  final Map item;
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
                            widget.item["photo"],
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
                                widget.item["doctor_name"],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                widget.item["specialization"],
                                style: TextStyle(
                                  fontSize: 14.0,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: Color(0xfff4f9ff),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8.0),
                                  ),
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    text: '',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text:
                                            "${widget.item["patient_count"]} patient",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 10.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' booked today',
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontSize: 10.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Icon(
                          Icons.thumb_up,
                          size: 16.0,
                          color: primaryColor,
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "100%",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "19 pasien",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey[600],
                          ),
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 16.0,
                          color: Colors.grey[600],
                        ),
                        Spacer(),
                        OutlinedButton.icon(
                          icon: Icon(
                            Icons.add,
                            size: 16.0,
                            color: primaryColor,
                          ),
                          label: Text(
                            "Berikan ulasan",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: primaryColor,
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.green,
                            side: BorderSide(
                              color: Colors.transparent,
                              width: 0.0,
                            ),
                          ),
                          onPressed: () {},
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
                            "Address",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 64.0,
                                width: 64.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      "https://images.unsplash.com/photo-1586773860418-d37222d8fce3?auto=format&fit=crop&q=80&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&w=2073",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 6.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "RS Miami Dramaga Bogor",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      "Jln. Raya Pakuan Regency Blok E3 Nomor 21, Margajaya, Bogor Barat, Bogor",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      "Fee Rp100.000,-",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: warningColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              CircleAvatar(
                                radius: 16.0,
                                backgroundColor: primaryColor,
                                child: Icon(
                                  MdiIcons.navigationVariant,
                                  color: Colors.white,
                                  size: 16.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 12.0,
                          ),
                          for (var index in [1, 2, 3])
                            Container(
                              width: MediaQuery.of(context).size.width,
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
                              ),
                              padding: EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Senin, 16 Oktober 2023",
                                    style: TextStyle(
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    height: 32.0,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: primaryColor,
                                        side: BorderSide(
                                          color: primaryColor,
                                        ),
                                      ),
                                      onPressed: () =>
                                          Get.to(PatientOrderView()),
                                      child: Text(
                                        "16:30 - 18:30",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          SizedBox(
                            height: 12.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  "All location and schedules",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: primaryColor,
                                  ),
                                ),
                                Icon(
                                  Icons.chevron_right,
                                  size: 16.0,
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Text(
                          //   "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                          //   style: TextStyle(
                          //     fontSize: 12.0,
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 6.0,
                          // ),
                          // Row(
                          //   children: [
                          //     Text(
                          //       "Selengkapnya",
                          //       style: TextStyle(
                          //         fontSize: 12.0,
                          //         color: primaryColor,
                          //       ),
                          //     ),
                          //     Icon(
                          //       Icons.chevron_right,
                          //       color: primaryColor,
                          //       size: 16.0,
                          //     ),
                          //   ],
                          // ),
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
                        for (var n in [1, 2, 3])
                          Container(
                            margin: EdgeInsets.only(
                              bottom: 6.0,
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.circle,
                                  size: 8.0,
                                  color: Colors.grey[600],
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                Text(
                                  "Pembersihan gigi",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ],
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
                        for (var n in [1, 2, 3, 4, 5])
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 6.0,
                            ),
                            child: Text(
                              "Dokter Gigi - RS Miami Dramaga Bogor",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey[600],
                              ),
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
                        for (var n in [1, 2])
                          Container(
                            margin: const EdgeInsets.only(
                              bottom: 6.0,
                            ),
                            child: Text(
                              "Sp.KG - Spesialis Konversasi Gigi - Universitas Gajah Mada",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey[600],
                              ),
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
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.all(12.0),
      //   height: 66,
      //   child: ElevatedButton(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: warningColor,
      //     ),
      //     onPressed: () {},
      //     child: const Text(
      //       "Buat Janji Konsultasi",
      //       style: TextStyle(
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
