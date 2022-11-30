import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/widgets/custom_avatar.dart';
import '../../../../const/app_colors.dart';
import '../../../../widgets/custom_space.dart';
import '../../../../widgets/custom_text.dart';

Widget iconAndTextItem({
  required Icon icon,
  required String text,
  required Function onPress,
  Color? bgColor= AppColors.darkGreen,
  Color? textColor= AppColors.whiteColor,
  
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      customAvatar(
        backgroundColor: bgColor,
        icon: icon,
        radius: 35.sp,
        onTap: onPress
      ),
      verticalSpace(10.h),
      boldText(
          text: text,
           fontSize: 13.sp,
            color: textColor,
            ),
    ],
  );
}
