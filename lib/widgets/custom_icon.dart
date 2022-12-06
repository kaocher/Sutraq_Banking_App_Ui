import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';

Widget customIcon({
  required IconData icon,
  Color? color = AppColors.whiteColor,
  double? size = 24,
}) {
  return Icon(
    icon,
    color: color,
    size: size!.r,
  );
}
