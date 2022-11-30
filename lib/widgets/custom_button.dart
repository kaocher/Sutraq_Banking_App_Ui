import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_font_weight.dart';
import 'package:sutraq/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
   Color? bgColor;

   CustomButton({
    required this.text,
    required this.onPress,
    this.bgColor= AppColors.greenColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(7).r,
      ),
      width: 300.w,
      height: 60.w,
      child: Center(
        child: boldText(
          text: text,
          fontSize: 17.sp,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
