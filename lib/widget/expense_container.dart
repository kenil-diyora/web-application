import 'package:demo1/dashboard/detail_page.dart';
import 'package:flutter/material.dart';

import '../config/color.dart';

Widget expenseContainer(
  BuildContext context, {
  bool statusContainer = true,
  bool trailingArrow = true,
  bool bottomBorder = false,
  Color statusColor = Colors.greenAccent,
  Color borderColor = Colors.white10,
  String? title,
  String? subTitle,
  String? expense,
  double verticalMargin = 5,
  double horizontalMargin = 0,
  double verticalPadding = 10,
  double horizontalPadding = 10,
}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Detail(),
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.symmetric(
        vertical: verticalMargin,
        horizontal: horizontalMargin,
      ),
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: bottomBorder == true ? borderColor : Colors.transparent,
          ),
        ),
      ),
      child: Row(
        children: [
          statusContainer == true
              ? Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 2,
                  ),
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  color: statusColor,
                  alignment: Alignment.center,
                )
              : const SizedBox(),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: ColorConst.white,
                  ),
                ),
                Text(
                  "$subTitle",
                  style: const TextStyle(
                    fontSize: 14,
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
                fontWeight: FontWeight.w500,
                color: Color(0xFFD8D8D8),
              ),
            ),
          ),
          trailingArrow == true
              ? const Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: ColorConst.titleColor,
                )
              : const SizedBox(),
        ],
      ),
    ),
  );
}
