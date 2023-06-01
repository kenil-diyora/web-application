import 'package:flutter/cupertino.dart';

import '../config/color.dart';

Widget titleNumber({
  String? title,
  String? expense,
  double horizontalMargin = 0,
  double verticalMargin = 0,
}) {
  return Container(
    width: double.maxFinite,
    margin: EdgeInsets.symmetric(
      horizontal: horizontalMargin,
      vertical: verticalMargin,
    ),
    padding: const EdgeInsets.all(15),
    decoration: const BoxDecoration(
      color: ColorConst.containerColor,
    ),
    alignment: Alignment.centerLeft,
    child:  Column(
      crossAxisAlignment:
      CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: Text(
            "$title",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: ColorConst.white,
            ),
          ),
        ),
        Text(
          "$expense",
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w900,
            color: ColorConst.white,
          ),
        ),
      ],
    ),
  );
}