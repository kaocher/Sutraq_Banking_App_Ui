import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/styles/app_font_weight.dart';

class AppTextStyle {
  //Default Style
  static TextStyle defaultStyle({
    double fontSize = 16,
    FontWeight fontWeight = w500,
    Color color = AppColors.blackColor,
  }) {
    return TextStyle(
      fontSize: AppDimension.font16,
      fontWeight: fontWeight,
      color: color,
    );
  }

//Small style
  static TextStyle smallTextStyle({
    double? fontSize = 12,
    Color? color = Colors.black,
  }) {
    return TextStyle(
      fontWeight: w400,
      fontSize: fontSize,
      color: color,
    );
  }

//Semi-Bold Style
  static TextStyle semiBoldStyle({
    double? fontSize = 14,
    Color? color = Colors.black,
  }) {
    return TextStyle(
      fontWeight: w600,
      fontSize: fontSize,
      color: color,
    );
  }

//Bold Style
  static  TextStyle boldTextStyle({
    double? fontSize = 22,
    Color? color=Colors.black,
  }) {
    return TextStyle(
      fontWeight: w700,
      fontSize: fontSize,
      color: color,
    );
  }
}
