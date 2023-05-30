import 'package:flutter/cupertino.dart';
import 'package:pie_chart/pie_chart.dart';
import '../config/color.dart';

Widget billsPieChart() {
  return const PieChart(
    dataMap: {
      "RedPay Credit": 45.36,
      "Rent": 1200.00,
      "TabFine Credit": 87.33,
      "ABC Loans": 400.00,
    },
    colorList: [
      Color(0xFFFFDC78),
      Color(0xFFFD6851),
      Color(0xFFFFD7D0),
      Color(0xFFBD8215),
    ],
    // chartRadius: 50,
    chartType: ChartType.ring,
    ringStrokeWidth: 5,
    centerText: "Total\n\$1,732.69",
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
    // gradientList: ---To add gradient colors---
    // emptyColorGradient: ---Empty Color gradient---
  );
}
