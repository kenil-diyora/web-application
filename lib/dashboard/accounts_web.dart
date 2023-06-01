import 'package:demo1/config/color.dart';
import 'package:demo1/widget/accounts_piechart.dart';
import 'package:demo1/widget/detail_box.dart';
import 'package:demo1/widget/expense_container.dart';
import 'package:flutter/material.dart';

class WebAccounts extends StatelessWidget {
  const WebAccounts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: MediaQuery.of(context).size.width / 7,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 30,
                      ),
                      child: accountPieChart(),
                    ),
                    const Divider(
                      color: Colors.black26,
                      thickness: 1,
                    ),
                    expenseContainer(
                      context,
                      statusColor: const Color(0xFF005D56),
                      title: "Checking",
                      subTitle: "******1234",
                      expense: "\$2,215.13",
                      horizontalMargin: 20,
                      horizontalPadding: 0,
                      verticalPadding: 10,
                      borderColor: Colors.black26,
                      bottomBorder: true,
                    ),
                    expenseContainer(
                      context,
                      statusColor: const Color(0xFF089C6D),
                      title: "Home Savings",
                      subTitle: "******5678",
                      expense: "\$8,678.88",
                      horizontalMargin: 20,
                      horizontalPadding: 0,
                      verticalPadding: 10,
                      borderColor: Colors.black26,
                      bottomBorder: true,
                    ),
                    expenseContainer(
                      context,
                      statusColor: const Color(0xFF37EFBA),
                      title: "Car Savings",
                      subTitle: "******9012",
                      expense: "\$987.48",
                      horizontalMargin: 20,
                      horizontalPadding: 0,
                      verticalPadding: 10,
                      borderColor: Colors.black26,
                      bottomBorder: true,
                    ),
                    expenseContainer(
                      context,
                      statusColor: const Color(0xFF0A5E41),
                      title: "Vacation",
                      subTitle: "******3456",
                      expense: "\$253.00",
                      horizontalMargin: 20,
                      horizontalPadding: 0,
                      verticalPadding: 10,
                      borderColor: Colors.black26,
                      bottomBorder: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: const Color(0xFF26282F),
              height: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    detailBox(
                      title: "Annual Percentage Yield",
                      subTitle: "0.10%",
                    ),
                    detailBox(
                      title: "Interest Rate",
                      subTitle: "\$1.676.14",
                    ),
                    detailBox(
                      title: "Interest YTD",
                      subTitle: "\$81.45",
                    ),
                    detailBox(
                      title: "Interest Paid Last Year",
                      subTitle: "\$987.12",
                    ),
                    detailBox(
                      title: "Next Statement",
                      subTitle: "12/25/2019",
                    ),
                    detailBox(
                      title: "Account Owner",
                      subTitle: "Philip Cao",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
