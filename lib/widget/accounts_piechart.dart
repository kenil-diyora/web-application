import 'package:flutter/cupertino.dart';
import 'package:pie_chart/pie_chart.dart';
import '../config/color.dart';

Widget accountPieChart({
  double? chartRadius,
}) {
  return PieChart(
    dataMap: const {
      "Checking": 2215.13,
      "Home Savings": 8678.88,
      "Car Savings": 987.48,
      "Vacation": 253.00,
    },
    chartRadius: chartRadius,
    colorList: const [
      Color(0xFF005D56),
      Color(0xFF089C6D),
      Color(0xFF37EFBA),
      Color(0xFF0A5E41),
    ],
    // chartRadius: 50,
    chartType: ChartType.ring,
    ringStrokeWidth: 5,
    centerText: "Total\n\$12,134.49",
    legendOptions: const LegendOptions(
      showLegends: false,
    ),
    centerTextStyle: const TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      color: ColorConst.white,
    ),
    chartValuesOptions: const ChartValuesOptions(
      showChartValueBackground: false,
      showChartValues: false,
      showChartValuesInPercentage: false,
      showChartValuesOutside: false,
      decimalPlaces: 1,
    ),
    // gradientList: ---To add gradient colors---
    // emptyColorGradient: ---Empty Color gradient---
  );
}
