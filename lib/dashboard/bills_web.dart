import 'package:demo1/config/color.dart';
import 'package:demo1/widget/bills_piechart.dart';
import 'package:flutter/material.dart';

import '../widget/detail_box.dart';
import '../widget/expense_container.dart';

class WebBills extends StatelessWidget {
  const WebBills({Key? key}) : super(key: key);

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
                  horizontal: MediaQuery.of(context).size.width / 10,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        bottom: 50,
                      ),
                      child: billsPieChart(),
                    ),
                    expenseContainer(
                      statusColor: const Color(0xFFFFDC78),
                      title: "RedPay Credit",
                      subTitle: "Jan 29",
                      expense: "\$45.36",
                    ),
                    expenseContainer(
                      statusColor: const Color(0xFFFD6851),
                      title: "Rent",
                      subTitle: "Feb 9",
                      expense: "\$1200.00",
                    ),
                    expenseContainer(
                      statusColor: const Color(0xFFFFD7D0),
                      title: "TabFine Credit",
                      subTitle: "Fab 22",
                      expense: "\$87.33",
                    ),
                    expenseContainer(
                      statusColor: const Color(0xFFBD8215),
                      title: "ABC Loans",
                      subTitle: "******3456",
                      expense: "\$400.00",
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
                      title: "Total Amount",
                      subTitle: "\$2,932.69",
                    ),
                    detailBox(
                      title: "Amount Paid",
                      subTitle: "\$1,200.00",
                    ),
                    detailBox(
                      title: "Amount Due",
                      subTitle: "\$1,732.69",
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
