import 'package:flutter/cupertino.dart';

import '../config/color.dart';

Widget button(
  BuildContext context, {
  String? title,
  double horizontalMargin = 0,
  double verticalMargin = 0,
}) {
  return GestureDetector(
    // onTap: () {
    //   Navigator.pushNamed(
    //     context,
    //     "/home-screen",
    //   );
    // },
    child: Container(
      height: 40,
      margin: EdgeInsets.symmetric(
        horizontal: horizontalMargin,
        vertical: verticalMargin,
      ),
      alignment: Alignment.center,
      color: ColorConst.containerColor,
      child: Text(
        "$title",
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: ColorConst.white,
        ),
      ),
    ),
  );
}
