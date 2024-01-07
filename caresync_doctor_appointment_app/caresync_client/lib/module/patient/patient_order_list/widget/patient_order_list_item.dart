import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/button/button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/model/doctor/doctor.dart';
import 'package:hyper_ui/module/patient/patient_doctor_detail/view/patient_doctor_detail_view.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:hyper_ui/state_util.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PatientOrderListItem extends StatelessWidget {
  final Doctor item;
  PatientOrderListItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getColor() {
      List colors = [primaryColor, warningColor, dangerColor, successColor];
      colors.shuffle();
      return colors.first;
    }

    return Card(
      elevation: 0.4,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(6.0),
            child: Row(
              children: [
                Icon(
                  MdiIcons.clockOutline,
                  size: 24.0,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Book appointment",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "23 Nov 2023",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.0,
                    vertical: 4.0,
                  ),
                  decoration: BoxDecoration(
                    color: warningColor.withOpacity(0.4),
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        8.0,
                      ),
                    ),
                  ),
                  child: Text(
                    "Pending",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: warningColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 2.0,
                ),
                InkWell(
                  child: Icon(
                    Icons.more_vert,
                    size: 24.0,
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 0.6,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://i.ibb.co/PGv8ZzG/me.jpg",
                      ),
                    ),
                    SizedBox(
                      width: 4.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Dr. Rian",
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Spesialis Gigi",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "20:21",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey[300],
                  thickness: 0.6,
                ),
                Row(
                  children: [
                    QButton(
                      width: 120.0,
                      size: xs,
                      label: "Pending",
                      color: getColor(),
                      onPressed: () {},
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      child: Icon(
                        MdiIcons.phone,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    CircleAvatar(
                      backgroundColor: primaryColor,
                      child: Icon(
                        MdiIcons.messageFastOutline,
                        size: 24.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
                    item.photo ?? "https://i.ibb.co/S32HNjD/no-image.jpg",
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
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            item.specialization?.specializationName ?? "-",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Color(0xff7f7f7f),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            MdiIcons.directions,
                            size: 16.0,
                            color: Color(0xff7f7f7f),
                          ),
                          SizedBox(
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
                    ],
                  ),
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
