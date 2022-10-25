import 'package:flutter/material.dart';
import 'package:sav_task/core/const/app_color.dart';

class DefTheme {
  static ThemeData themeData = ThemeData(
    fontFamily: "airbnb-cereal",
    textTheme: const TextTheme(
      // headline1: TextStyle(color: AppColor.primaryTextColor),
      // headline2: TextStyle(color: AppColor.primaryTextColor),
      // bodyText2: TextStyle(color: AppColor.primaryTextColor),
      subtitle1: TextStyle(color: AppColor.primaryTextColor),
    ),
  );
}
