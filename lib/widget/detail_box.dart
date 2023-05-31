import 'package:flutter/material.dart';
import '../config/color.dart';

Widget detailBox({
  String title = "",
  String subTitle = "",
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.grey,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Text(
          subTitle,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: ColorConst.white,
          ),
        ),
      ),
      const Divider(
        color: Colors.white10,
        thickness: 1,
      ),
    ],
  );
}
