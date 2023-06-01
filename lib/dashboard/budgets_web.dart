import 'package:demo1/config/color.dart';
import 'package:demo1/widget/shop_container.dart';
import 'package:flutter/material.dart';
import '../widget/budgets_piechart.dart';
import '../widget/detail_box.dart';

class WebBudgets extends StatelessWidget {
  const WebBudgets({Key? key}) : super(key: key);

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
                      child: budgetsPieChart(),
                    ),
                    shopContainer(
                      context,
                      statusColor: const Color(0xFFB2F2FF),
                      title: "Coffee Shops",
                      subTitle: "\$45.49 / \$70.00",
                      cost: "\$24.51  ",
                      tMargin: 15,
                      bMargin: 7.5,
                    ),
                    shopContainer(
                      context,
                      statusColor: const Color(0xFFB15DFF),
                      title: "Groceries",
                      subTitle: "\$16.45 / \$170.00",
                      cost: "\$153.55  ",
                      tMargin: 7.5,
                      bMargin: 7.5,
                    ),
                    shopContainer(
                      context,
                      statusColor: const Color(0xFF5295AA),
                      title: "Restaurants",
                      subTitle: "\$123.25 / \$17000",
                      cost: "\$46.75  ",
                      tMargin: 7.5,
                      bMargin: 7.5,
                    ),
                    shopContainer(
                      context,
                      statusColor: const Color(0xFF0082FB),
                      title: "Clothing",
                      subTitle: "\$19.45 / \$70.00",
                      cost: "\$50.55  ",
                      tMargin: 7.5,
                      bMargin: 15,
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
                      title: "Total Cap",
                      subTitle: "\$480.00",
                    ),
                    detailBox(
                      title: "Amount Used",
                      subTitle: "\$204.64",
                    ),
                    detailBox(
                      title: "Amount Left",
                      subTitle: "\$275.36",
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
