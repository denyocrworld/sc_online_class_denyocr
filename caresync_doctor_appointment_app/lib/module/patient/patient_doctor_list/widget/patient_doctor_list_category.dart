// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';

class PatientDoctorListCategory extends StatelessWidget {
  final List categories;
  const PatientDoctorListCategory({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  categories.length,
                  (index) {
                    var item = categories[index];
                    bool selected = index == 0;
                    return Container(
                      height: 60.0,
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          bottom: BorderSide(
                            width: 4.0,
                            color: selected ? infoColor : Colors.white,
                          ),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "$item",
                          style: TextStyle(
                            color: selected ? infoColor : Colors.grey[600],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Container(
            width: 50,
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
              border: Border.all(
                width: 1.0,
                color: Colors.grey[300]!,
              ),
            ),
            child: Icon(
              Icons.menu,
              size: 24.0,
              color: infoColor,
            ),
          ),
        ],
      ),
    );
  }
}
