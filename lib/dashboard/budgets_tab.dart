import 'package:demo1/widget/shop_container.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import '../config/color.dart';
import '../widget/back_button.dart';

class TabBudgets extends StatelessWidget {
  const TabBudgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: PieChart(
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
                    ),
                  ),
                  shopContainer(
                    statusColor: const Color(0xFFB2F2FF),
                    title: "Coffee Shops",
                    subTitle: "\$45.49 / \$70.00",
                    cost: "\$24.51  ",
                    tMargin: 15,
                    bMargin: 7.5,
                  ),
                  shopContainer(
                    statusColor: const Color(0xFFB15DFF),
                    title: "Coffee Shops",
                    subTitle: "\$45.49 / \$70.00",
                    cost: "\$24.51  ",
                    tMargin: 7.5,
                    bMargin: 7.5,
                  ),
                  shopContainer(
                    statusColor: const Color(0xFF5295AA),
                    title: "Coffee Shops",
                    subTitle: "\$45.49 / \$70.00",
                    cost: "\$24.51  ",
                    tMargin: 7.5,
                    bMargin: 7.5,
                  ),
                  shopContainer(
                    statusColor: const Color(0xFF0082FB),
                    title: "Coffee Shops",
                    subTitle: "\$45.49 / \$70.00",
                    cost: "\$24.51  ",
                    tMargin: 7.5,
                    bMargin: 15,
                  ),
                ],
              ),
            ),
          ),
          backButton(),
        ],
      ),
    );
  }
}
