// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:common_error/core.dart';
import 'package:common_error/state_util.dart';
import 'package:flutter/material.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List items = [
      {
        "label": "Case 1",
        "page": const Case1View(),
      },
      {
        "label": "Case 2",
        "page": const Case2View(),
      },
      {
        "label": "Case 3",
        "page": const Case3View(),
      },
      {
        "label": "Case 4",
        "page": const Case4View(),
      },
      {
        "label": "Case 5",
        "page": const Case5View(),
      },
      {
        "label": "Case 6",
        "page": const Case6View(),
      }
    ];
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1.0,
        crossAxisCount: 3,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
      itemCount: items.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = items[index];
        // 8GB
        // AMD RYZEN 3 | RYZEN 5
        // 5-7jtan
        return InkWell(
          onTap: () => Get.to(item["page"]),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red[300],
              borderRadius: const BorderRadius.all(
                Radius.circular(12.0),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 24,
                  offset: Offset(0, 11),
                ),
              ],
              border: Border.all(
                width: 1.0,
                color: Colors.grey[400]!,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${item["label"]}",
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
