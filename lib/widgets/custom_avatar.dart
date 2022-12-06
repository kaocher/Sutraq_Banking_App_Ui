import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_colors.dart';

Widget customAvatar ({
   Widget? icon,
  Widget? text,
   double? radius=20,
   Color? backgroundColor= AppColors.greenColor,
   VoidCallback? onTap,
   bool isText =false,
   }){
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
          radius: radius!.r,
          backgroundColor: backgroundColor,
          child: isText? text :icon,
        ),
  );
}