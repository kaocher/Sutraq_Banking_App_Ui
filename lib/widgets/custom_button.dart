import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/styles/app_font_weight.dart';
import 'package:sutraq/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPress;
   Color? buttonColor;
   double? height;
   double? width;

   CustomButton({
    required this.text,
    required this.onPress,
    this.buttonColor= AppColors.greenColor,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: AppPadding.vPadding(20),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(7).r,
        ),
        width: width,
        height: height,
        child: Center(
          child: boldText(
            text: text,
            fontSize: 16.sp,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
