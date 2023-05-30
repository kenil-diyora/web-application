import 'package:demo1/widget/accounts_piechart.dart';
import 'package:demo1/widget/back_button.dart';
import 'package:demo1/widget/expense_container.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';

class TabAccounts extends StatelessWidget {
  const TabAccounts({Key? key}) : super(key: key);

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
                    child: accountPieChart(),
                  ),
                  expenseContainer(
                    statusColor: const Color(0xFF005D56),
                    title: "Checking",
                    subTitle: "******1234",
                    expense: "\$2,215.13",
                  ),
                  expenseContainer(
                    statusColor: const Color(0xFF089C6D),
                    title: "Home Savings",
                    subTitle: "******5678",
                    expense: "\$8,678.88",
                  ),
                  expenseContainer(
                    statusColor: const Color(0xFF37EFBA),
                    title: "Car Savings",
                    subTitle: "******9012",
                    expense: "\$987.48",
                  ),
                  expenseContainer(
                    statusColor: const Color(0xFF0A5E41),
                    title: "Vacation",
                    subTitle: "******1234",
                    expense: "\$253.00",
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
