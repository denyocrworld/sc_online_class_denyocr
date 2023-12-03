import 'dart:math';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashboardSalesStatistic extends StatelessWidget {
  const DashboardSalesStatistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      height: 160.0,
      decoration: const BoxDecoration(
        color: Color(0xfff12c57),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 11),
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 20.0,
            ),
            child: Builder(
              builder: (context) {
                final List<Map> chartData = List.generate(50, (index) {
                  return {
                    "year": 2000 + index,
                    "sales": Random().nextInt(100),
                  };
                });
                return Container(
                  color: Colors.transparent,
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
                      SplineSeries<Map, int>(
                        color: Colors.white.withOpacity(0.7),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sales",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
              Text(
                "127.000",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
