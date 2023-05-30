import 'package:demo1/config/color.dart';
import 'package:demo1/widget/back_button.dart';
import 'package:demo1/widget/button.dart';
import 'package:demo1/widget/expense_container.dart';
import 'package:demo1/widget/title_number.dart';
import 'package:flutter/material.dart';

import '../widget/shop_container.dart';

class TabOverView extends StatefulWidget {
  const TabOverView({Key? key}) : super(key: key);

  @override
  State<TabOverView> createState() => _TabOverViewState();
}

class _TabOverViewState extends State<TabOverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                  decoration: const BoxDecoration(
                    color: ColorConst.containerColor,
                  ),
                  child: const Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Alerts",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorConst.white,
                              ),
                            ),
                            Text(
                              "SEE ALL",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: ColorConst.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 50,
                              ),
                              child: Text(
                                "Heads up, you've used up 90% of your shopping budget for this month.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: ColorConst.white,
                                ),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: ColorConst.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                titleNumber(
                  title: "Accounts",
                  expense: "\$12,134.49",
                  horizontalMargin: 10,
                ),
                expenseContainer(
                  title: "Checking",
                  subTitle: "******1234",
                  expense: "\$2,215.13",
                  statusColor: const Color(0xFF085653),
                  horizontalPadding: 30,
                  verticalMargin: 10,
                ),
                expenseContainer(
                  title: "Home Savings",
                  subTitle: "******5678",
                  expense: "\$8,678.88",
                  statusColor: const Color(0xFF21A573),
                  horizontalPadding: 30,
                  verticalMargin: 10,
                ),
                expenseContainer(
                  title: "Car Savings",
                  subTitle: "******9012",
                  expense: "\$987.48",
                  statusColor: const Color(0xFF3AF0BB),
                  horizontalPadding: 30,
                  verticalMargin: 10,
                ),
                button(
                  context,
                  title: "SEE ALL",
                  horizontalMargin: 10,
                ),
                titleNumber(
                  title: "Bills",
                  expense: "\$1,732.69",
                  horizontalMargin: 10,
                  verticalMargin: 15,
                ),
                expenseContainer(
                  title: "RedPay Credit",
                  subTitle: "Jan 29",
                  expense: "\$45.36",
                  statusColor: Colors.yellow,
                  horizontalPadding: 30,
                  verticalMargin: 10,
                ),
                expenseContainer(
                  title: "Rent",
                  subTitle: "Fab 9",
                  expense: "\$1,200.00",
                  statusColor: Colors.red,
                  horizontalPadding: 30,
                  verticalMargin: 10,
                ),
                expenseContainer(
                  title: "TabFine Credit",
                  subTitle: "Fab 22",
                  expense: "\$87.33",
                  statusColor: Colors.white,
                  horizontalPadding: 30,
                  verticalMargin: 10,
                ),
                button(
                  context,
                  title: "SEE ALL",
                  horizontalMargin: 10,
                  verticalMargin: 15,
                ),
                titleNumber(
                  title: "Budgets",
                  expense: "\$480.00",
                  horizontalMargin: 10,
                  verticalMargin: 15,
                ),
                shopContainer(
                  statusColor: const Color(0xFFACD8E4),
                  title: "Coffee Shops",
                  subTitle: "\$45.49 / \$70.00",
                  cost: "\$24.51  ",
                ),
                shopContainer(
                  statusColor: const Color(0xFF736392),
                  title: "Groceries",
                  subTitle: "\$16.45 / \$170.00",
                  cost: "\$153.55  ",
                ),
                shopContainer(
                  statusColor: const Color(0xFFACD8E4),
                  title: "Restaurants",
                  subTitle: "\$123.25 / \$170.00",
                  cost: "\$46.75  ",
                ),
                button(
                  context,
                  title: "SEE ALL",
                  horizontalMargin: 10,
                  verticalMargin: 15,
                ),
              ],
            ),
          ),
          backButton(),
        ],
      ),
    );
  }
}
