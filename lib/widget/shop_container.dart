import 'package:flutter/material.dart';
import '../config/color.dart';
import '../dashboard/detail_page.dart';

Widget shopContainer(
  BuildContext context, {
  double tMargin = 0,
  double bMargin = 0,
  Color? statusColor,
  String? title,
  String? subTitle,
  String? cost,
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
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: ColorConst.white,
                  ),
                ),
                Text(
                  "$subTitle",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
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
              fontWeight: FontWeight.w500,
              color: Color(0xFFD8D8D8),
            ),
          ),
          const Text(
            "LEFT",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w300,
              color: ColorConst.titleColor,
            ),
          ),
        ],
      ),
    ),
  );
}
