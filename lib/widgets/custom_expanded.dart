import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';

Widget customExpanded(
  {
    Color? color= AppColors.greenColor,
    double borderRadius= 20,
    Widget? child,
  }
) {
  return Expanded(
    child: Container(
      width: double.infinity,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius.r),
          topRight: Radius.circular(borderRadius.r),
        ),
      ),
      child: child,
    ),
  );
}
