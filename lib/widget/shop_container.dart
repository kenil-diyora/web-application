import 'package:flutter/cupertino.dart';

import '../config/color.dart';

Widget shopContainer({
  double tMargin = 0,
  double bMargin = 0,
  Color? statusColor,
  String? title,
  String? subTitle,
  String? cost,
}) {
  return Container(
    margin: EdgeInsets.only(
      top: tMargin,
      bottom: bMargin,
    ),
    padding: const EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 20,
    ),
    decoration: const BoxDecoration(
      color: ColorConst.containerColor,
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
          color: statusColor,
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
        Text(
          "$cost",
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: ColorConst.white,
          ),
        ),
        const Text(
          "LEFT",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: ColorConst.titleColor,
          ),
        ),
      ],
    ),
  );
}
