import 'package:demo1/widget/back_button.dart';
import 'package:demo1/widget/expense_container.dart';
import 'package:flutter/material.dart';
import '../config/color.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.backGround,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: ColorConst.white,
                          ),
                        ),
                        const Text(
                          "Checking",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.white,
                          ),
                        ),
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.transparent,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.network(
                    "https://cdn.dribbble.com/users/43762/screenshots/1193020/line-graph-dribbbble.gif",
                    width: double.infinity,
                    height: 250,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: [
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                      expenseContainer(
                        context,
                        statusContainer: false,
                        trailingArrow: false,
                        bottomBorder: true,
                        horizontalMargin: 15,
                        verticalMargin: 5,
                        horizontalPadding: 0,
                        title: "Genoe",
                        subTitle: "1/24/2019",
                        expense: "-\$16.54",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          backButton(
            context,
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
