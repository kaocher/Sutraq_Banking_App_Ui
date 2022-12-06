import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../const/app_colors.dart';
import '../../../../widgets/custom_space.dart';
import '../../../../widgets/custom_text.dart';

Widget iconAndTextItem({
  required IconData icon,
  required String text,
   VoidCallback? onPress,
  Color? bgColor= AppColors.darkGreen,
  Color? textColor= AppColors.whiteColor,
  
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: onPress,
        child: CircleAvatar(
          backgroundColor: bgColor,
          radius: 35.r,
          child: Icon(icon),
        ),
      ),
      verticalSpace(10),
      boldText(
          text: text,
           fontSize: 13,
            color: textColor,
            ),
    ],
  );
}
