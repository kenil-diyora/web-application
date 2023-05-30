import 'package:flutter/material.dart';
import '../config/color.dart';

Widget alertNote({
  double tMargin = 0,
  double bMargin = 0,
  String? note,
  IconData? icon,
}) {
  return Padding(
    padding: EdgeInsets.only(
      top: tMargin,
      bottom: bMargin,
    ),
    child: Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 50,
            ),
            child: Text(
              note!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: ColorConst.white,
              ),
            ),
          ),
        ),
        Icon(
          icon,
          color: ColorConst.titleColor,
        ),
      ],
    ),
  );
}
