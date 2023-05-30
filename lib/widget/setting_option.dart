import 'package:flutter/material.dart';
import '../config/color.dart';

Widget settingOption({
  String title = "",
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: ColorConst.white,
          ),
        ),
      ),
      const Divider(
        color: Colors.black26,
        thickness: 1,
      ),
    ],
  );
}
