import 'package:demo1/widget/budgets_piechart.dart';
import 'package:demo1/widget/shop_container.dart';
import 'package:flutter/material.dart';
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: budgetsPieChart(),
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
