import 'package:flutter/cupertino.dart';
import 'package:pie_chart/pie_chart.dart';
import '../config/color.dart';

Widget budgetsPieChart() {
  return const PieChart(
    dataMap: {
      "Coffee Shops": 24.51,
      "Groceries": 153.55,
      "Restaurants": 46.75,
      "Clothing": 50.55,
    },
    colorList: [
      Color(0xFFB2F2FF),
      Color(0xFFB15DFF),
      Color(0xFF5295AA),
      Color(0xFF0082FB),
    ],
    // chartRadius: 50,
    chartType: ChartType.ring,
    ringStrokeWidth: 5,
    centerText: "Left\n\$275.36",
    // chartLegendSpacing: 10,
    legendOptions: LegendOptions(
      showLegends: false,
    ),
    centerTextStyle: TextStyle(
      fontSize: 34,
      fontWeight: FontWeight.w700,
      color: ColorConst.white,
    ),
    chartValuesOptions: ChartValuesOptions(
      showChartValueBackground: false,
      showChartValues: false,
      showChartValuesInPercentage: false,
      showChartValuesOutside: false,
      decimalPlaces: 1,
    ),
  );
}
