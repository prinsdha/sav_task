import 'package:flutter/material.dart';

class AppColor {
  static LinearGradient primaryBgColor = const LinearGradient(
      colors: [Color(0xffF0F3FF), Color(0xffFFFFFF)],
      end: Alignment.bottomRight,
      begin: Alignment.topRight);

  static LinearGradient blueButtonColor = const LinearGradient(
      colors: [Color(0xff0160FE), Color(0xff0147CE)],
      end: Alignment.topLeft,
      begin: Alignment.bottomRight);
  static const Color primaryTextColor = Color(0xff333333);
}
