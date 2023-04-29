import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'bar_chart_data.dart';

class BarChartContent extends StatelessWidget {
  const BarChartContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
        borderData: FlBorderData(show: false),
        gridData: FlGridData(show: false),
        maxY: 20,
        barGroups: barChartGroupData,
        titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
              showTitles: true,
            )))));
  }
}
