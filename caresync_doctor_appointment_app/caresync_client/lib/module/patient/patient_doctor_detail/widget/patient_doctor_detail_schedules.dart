// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/model/patient_doctor_detail_schedule_list.dart';
import 'package:hyper_ui/module/patient/patient_order/view/patient_order_view.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/state_util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PatientDoctorDetaulSchedules extends StatelessWidget {
  final Doctor doctor;
  const PatientDoctorDetaulSchedules({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var todayDay = DateFormat("EEEE").format(DateTime.now());
    //Thursday

    var doctorSchedulesByHospitals =
        PatientDoctorDetailScheduleList().generate(doctor);

    return Container(
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
            "Schedules",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          for (var item in doctorSchedulesByHospitals)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                            item.hospital.photo ??
                                "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                            item.hospital.hospitalName ?? "-",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            item.hospital.hospitalAddress ?? "-",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[600],
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
                Text(
                  DateFormat("EEEE, d MMM y").format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                //Schedule
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    for (var schedule in item.schedules)
                      Container(
                        height: 32.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.all(10.0),
                            foregroundColor: primaryColor,
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          onPressed: () => Get.to(PatientOrderView()),
                          child: Text(
                            "${schedule.startTime} - ${schedule.endTime}",
                            style: TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Divider(),
              ],
            ),
        ],
      ),
    );
  }
}
