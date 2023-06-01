import 'package:demo1/widget/bills_piechart.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';
import '../widget/back_button.dart';
import '../widget/expense_container.dart';

class TabBills extends StatelessWidget {
  const TabBills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 50,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: billsPieChart(),
                  ),
                  expenseContainer(
                    context,
                    statusColor: const Color(0xFFFFDC78),
                    title: "RedPay Credit",
                    subTitle: "Jan29",
                    expense: "\$45.36",
                  ),
                  expenseContainer(
                    context,
                    statusColor: const Color(0xFFFD6851),
                    title: "Rent",
                    subTitle: "Fab 9",
                    expense: "\$1200.00",
                  ),
                  expenseContainer(
                    context,
                    statusColor: const Color(0xFFFFD7D0),
                    title: "TabFine Credit",
                    subTitle: "Fab 22",
                    expense: "\$87.33",
                  ),
                  expenseContainer(
                    context,
                    statusColor: const Color(0xFFBD8215),
                    title: "ABC Loans",
                    subTitle: "Mar 1",
                    expense: "\$400.00",
                  ),
                ],
              ),
            ),
          ),
          backButton(
            context,
          ),
        ],
      ),
    );
  }
}
