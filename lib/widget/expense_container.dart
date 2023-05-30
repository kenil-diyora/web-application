import 'package:flutter/material.dart';

import '../config/color.dart';

Widget expenseContainer({
  Color statusColor = Colors.greenAccent,
  String? title,
  String? subTitle,
  String? expense,
  double verticalMargin = 5,
  double horizontalMargin = 0,
  double verticalPadding = 10,
  double horizontalPadding = 10,
}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: verticalMargin,
      horizontal: horizontalMargin,
    ),
    padding: EdgeInsets.symmetric(
      vertical: verticalPadding,
      horizontal: horizontalPadding,
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 2.5,
          ),
          margin: const EdgeInsets.only(
            right: 10,
          ),
          width: 5,
          color: statusColor,
          alignment: Alignment.center,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$title",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: ColorConst.white,
                ),
              ),
              Text(
                "$subTitle",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: ColorConst.titleColor,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            right: 10,
          ),
          child: Text(
            "$expense",
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorConst.white,
            ),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 12,
          color: ColorConst.titleColor,
        ),
      ],
    ),
  );
}
