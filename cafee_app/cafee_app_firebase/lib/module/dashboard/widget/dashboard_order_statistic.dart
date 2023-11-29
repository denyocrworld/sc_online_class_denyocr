import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardOrderStatistic extends StatelessWidget {
  const DashboardOrderStatistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xfffc4209),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            MdiIcons.listBox,
            color: Colors.white,
            size: 36.0,
          ),
          const SizedBox(
            width: 6.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "124.223",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Orders",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 100.0,
            child: Builder(
              builder: (context) {
                final List<Map> chartData = [
                  {
                    "year": 2018,
                    "sales": 40,
                  },
                  {
                    "year": 2019,
                    "sales": 90,
                  },
                  {
                    "year": 2020,
                    "sales": 30,
                  },
                  {
                    "year": 2021,
                    "sales": 80,
                  },
                  {
                    "year": 2022,
                    "sales": 90,
                  }
                ];

                return Container(
                  color: Colors.transparent,
                  padding: const EdgeInsets.all(12.0),
                  child: SfCartesianChart(
                    primaryXAxis: NumericAxis(
                      isVisible: false,
                    ),
                    primaryYAxis: NumericAxis(
                      isVisible: false,
                    ),
                    plotAreaBorderColor: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    isTransposed: true,
                    series: <ChartSeries>[
                      BarSeries<Map, int>(
                        color: Colors.white,
                        dataSource: chartData,
                        xValueMapper: (Map data, _) => data["year"],
                        yValueMapper: (Map data, _) => data["sales"],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
