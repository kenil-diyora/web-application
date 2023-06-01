import 'package:flutter/material.dart';

import '../config/color.dart';
import '../widget/alert_note.dart';
import '../widget/button.dart';
import '../widget/expense_container.dart';
import '../widget/shop_container.dart';
import '../widget/title_number.dart';

class WebOverview extends StatelessWidget {
  const WebOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          // horizontal: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 7.5,
                              ),
                              child: Column(
                                children: [
                                  titleNumber(
                                    title: "ACCOUNTS",
                                    expense: "\$12,134.49",
                                  ),
                                  expenseContainer(
                                    context,
                                    title: "Checking",
                                    subTitle: "******3466",
                                    expense: "\$2,215.13",
                                    statusColor: const Color(0xFF085653),
                                  ),
                                  expenseContainer(
                                      context,
                                      title: "Home Savings",
                                      subTitle: "******3466",
                                      expense: "\$8,678.88",
                                      statusColor: const Color(0xFF21A573)),
                                  expenseContainer(
                                    context,
                                    title: "Car Savings",
                                    subTitle: "******9012",
                                    expense: "\$987.48",
                                  ),
                                  button(
                                    context,
                                    title: "SEE ALL",
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 7.5,
                              ),
                              child: Column(
                                children: [
                                  titleNumber(
                                    title: "Bills",
                                    expense: "\$1,732.69",
                                  ),
                                  expenseContainer(
                                    context,
                                    title: "RedPay Credit",
                                    subTitle: "Jan 29",
                                    expense: "\$45.36",
                                    statusColor: Colors.yellow,
                                  ),
                                  expenseContainer(
                                    context,
                                    title: "Rent",
                                    subTitle: "Feb 9",
                                    expense: "\$1,200.00",
                                    statusColor: Colors.red,
                                  ),
                                  expenseContainer(
                                    context,
                                    title: "TabFine Credit",
                                    subTitle: "Fab 22",
                                    expense: "\$87.33",
                                    statusColor: ColorConst.white,
                                  ),
                                  button(
                                    context,
                                    title: "SEE ALL",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      titleNumber(
                        title: "Budgets",
                        expense: "\$480.00",
                        verticalMargin: 20,
                      ),
                      shopContainer(
                        context,
                        bMargin: 20,
                        statusColor: const Color(0xFFBEEDF9),
                        title: "Coffee Shops",
                        subTitle: "\$45.49 / \$70.00",
                        cost: "\$24.51  ",
                      ),
                      shopContainer(
                        context,
                        bMargin: 20,
                        statusColor: const Color(0xFF736392),
                        title: "Groceries",
                        subTitle: "\$16.45 / \$170.00",
                        cost: "\$153.55  ",
                      ),
                      shopContainer(
                        context,
                        bMargin: 20,
                        statusColor: const Color(0xFFBEEDF9),
                        title: "Restaurants",
                        subTitle: "\$123.25 / \$170.00",
                        cost: "\$46.75  ",
                      ),
                      button(
                        context,
                        title: "SEE ALL",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 20,
                ),
                color: ColorConst.containerColor,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Alerts",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: ColorConst.white,
                        ),
                      ),
                      alertNote(
                        tMargin: 15,
                        bMargin: 15,
                        note:
                            "Heads up, you've used up 90% of your shopping budget for this month.",
                        icon: Icons.menu,
                      ),
                      alertNote(
                        bMargin: 15,
                        note: "You've spent \$120 on Restaurants this week.",
                        icon: Icons.menu,
                      ),
                      alertNote(
                        bMargin: 15,
                        note: "You've spent \$24 in ATM fees this week.",
                        icon: Icons.credit_card,
                      ),
                      alertNote(
                        bMargin: 15,
                        note:
                            "Good work! Your checking account is 4% higher than last month.",
                        icon: Icons.attach_money,
                      ),
                      alertNote(
                        bMargin: 15,
                        note:
                            "Increase your potential tax deduction Assign categories to 16 unassigned transactions.",
                        icon: Icons.not_interested_outlined,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
