import 'package:syncfusion_flutter_charts/charts.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DashboardOrderStatistic extends StatelessWidget {
  const DashboardOrderStatistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xff4e48fc),
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.people,
            color: Colors.white,
            size: 36.0,
          ),
          SizedBox(
            width: 6.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "63.240",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "Customers",
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
                  padding: EdgeInsets.all(12.0),
                  child: SfCartesianChart(
                    primaryXAxis: NumericAxis(
                      isVisible: false,
                    ),
                    primaryYAxis: NumericAxis(
                      isVisible: false,
                    ),
                    plotAreaBorderColor: Colors.transparent,
                    margin: EdgeInsets.all(0.0),
                    series: <ChartSeries>[
                      LineSeries<Map, int>(
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
