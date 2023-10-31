// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/view/patient_doctor_detail_view.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/state_util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PatientDoctorListItem extends StatelessWidget {
  final Doctor item;
  const PatientDoctorListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(PatientDoctorDetailView(
        item: item,
      )),
      child: Container(
        margin: EdgeInsets.only(
          bottom: 20.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32.0,
                  backgroundImage: NetworkImage(
                    item.photo ?? "https://i.ibb.co/PGv8ZzG/me.jpg",
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
                        item.doctorName ?? "-",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.doctor,
                            size: 16.0,
                            color: Color(0xff7f7f7f),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            item.specializationId?.toString() ?? "-",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff7f7f7f),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.hospital,
                            size: 16.0,
                            color: Color(0xff7f7f7f),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            //TODO: Implementasikan address disni
                            "-",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff7f7f7f),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.directions,
                            size: 16.0,
                            color: Color(0xff7f7f7f),
                          ),
                          const SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            //TODO: Implementasikan location_in_km
                            "23 km from you",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff7f7f7f),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      RichText(
                        text: TextSpan(
                          text: '',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              //TODO: implementasikan patient_count
                              text: '23 patient',
                              style: TextStyle(
                                color: infoColor,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' have made an appointment with this doctor.',
                              style: TextStyle(
                                color: Color(0xff7f7f7f),
                                fontSize: 12.0,
                              ),
                            ),
                          ],
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
            Row(
              children: [
                Icon(
                  MdiIcons.calendar,
                  size: 16.0,
                  color: Color(0xff7f7f7f),
                ),
                const SizedBox(
                  width: 6.0,
                ),
                Text(
                  //TODO: Implementasikan next_scheduke
                  "Next schedule: 3 Dec 2023",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff7f7f7f),
                  ),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Biaya Konsultasi",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xff7f7f7f),
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      "Rp100.000",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: warningColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ulasan Dokter",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xff7f7f7f),
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "100%",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: infoColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "(19)",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color(0xff7f7f7f),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 12.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: warningColor,
                  ),
                  onPressed: () => Get.to(PatientDoctorDetailView(
                    item: item,
                  )),
                  child: const Text("Buat Janji"),
                ),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
