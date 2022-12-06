import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_font_weight.dart';
import 'package:sutraq/ui/styles/app_text_style.dart';

//Small Text

Widget smallText({
  required String text,
  double? fontSize= 14,
  Color? color=  AppColors.blackColor,
   FontWeight? fontWeight= w400,
   TextAlign? textAlign= TextAlign.start,
}) {
  return Text(
    text,
    textAlign: textAlign,
   style: TextStyle(
      color: color,
      fontSize: fontSize!.sp,
       fontWeight: fontWeight,
    ),
  );
}

//Default Text

Widget defaultText({
  required String text,
  double? fontSize= 16,
  Color? color=  AppColors.blackColor,
   FontWeight? fontWeight= w500,
   TextAlign? textAlign= TextAlign.start,
}) {
  return Text(
    text,
    textAlign: textAlign,
   style: TextStyle(
      color: color,
      fontSize: fontSize!.sp,
       fontWeight: fontWeight,
    ),
  );
}

//Semi-Bold Text

Widget semiBoldText({
  required String text,
  double? fontSize= 18,
  Color? color=  AppColors.blackColor,
   FontWeight? fontWeight= w600,

}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize!.sp,
       fontWeight: fontWeight,
    ),
  );
}

//Bold Text

Widget boldText({
  required String text,
  double? fontSize= 22,
  Color? color= AppColors.blackColor,
  FontWeight? fontWeight= w700,

}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize!.sp,
      fontWeight: fontWeight,
    ),
  );
}
