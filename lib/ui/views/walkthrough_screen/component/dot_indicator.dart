import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';

Widget dotIndicator({
  required bool isActive,
  Color? activeColor = AppColors.greenColor,
  Color? inactiveColor = AppColors.greyColor,
  double? activeHeight = 10,
  double? inactiveHeight = 8,
  double? activeWidth = 10,
  double? inactiveWidth = 8,
}) {
  return AnimatedContainer(
    margin: AppPadding.hPadding(5),
    duration: const Duration(milliseconds: 150),
    height: isActive ? activeHeight : inactiveHeight,
    width: isActive ? activeWidth : inactiveWidth,
    decoration: BoxDecoration(
      color: isActive ? activeColor : inactiveColor,
      shape: BoxShape.circle,
    ),
  );
}
