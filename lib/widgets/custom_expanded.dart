import 'package:flutter/material.dart';
import 'package:sutraq/const/app_colors.dart';

Widget customExpanded(
  {
    Color? color= AppColors.greenColor,
    double borderRadius= 25,
    Widget? child,
  }
) {
  return Expanded(
    child: Container(
      width: double.infinity,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
      ),
      child: child,
    ),
  );
}
