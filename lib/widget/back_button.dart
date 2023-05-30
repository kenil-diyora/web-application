import 'package:flutter/material.dart';
import '../config/color.dart';

Widget backButton() {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF4A1F7E),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.arrow_back_outlined,
            color: ColorConst.white,
          ),
          Text(
            "  BACK",
            style: TextStyle(
              color: ColorConst.white,
            ),
          ),
        ],
      ),
    ),
  );
}
