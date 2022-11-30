import 'package:flutter/material.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_font_weight.dart';
import 'package:sutraq/ui/styles/app_text_style.dart';

//Small Text

Widget smallText({
  required String text,
  double? fontSize= 14,
  Color? color=  AppColors.blackColor,
   FontWeight? fontWeight= smallFont,

}) {
  return Text(
    text,
   style: TextStyle(
      color: color,
      fontSize: fontSize,
       fontWeight: fontWeight,
    ),
  );
}

//Default Text

Widget defaultText({
  required String text,
  double? fontSize= 16,
  Color? color=  AppColors.blackColor,
   FontWeight? fontWeight= defaultFont,

}) {
  return Text(
    text,
   style: TextStyle(
      color: color,
      fontSize: fontSize,
       fontWeight: fontWeight,
    ),
  );
}

//Semi-Bold Text

Widget semiBoldText({
  required String text,
  double? fontSize= 18,
  Color? color=  AppColors.blackColor,
   FontWeight? fontWeight= semiBoldFont,

}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
       fontWeight: fontWeight,
    ),
  );
}

//Bold Text

Widget boldText({
  required String text,
  double? fontSize= 22,
  Color? color= AppColors.blackColor,
  FontWeight? fontWeight= boldFont,

}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    ),
  );
}
