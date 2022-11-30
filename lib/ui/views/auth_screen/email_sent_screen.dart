import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/views/auth_screen/tips_screen.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_image.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

class SentEmailScreen extends StatelessWidget {
  const SentEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightRed2,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: EdgeInsets.symmetric(
              // vertical: 40.h,
              horizontal: 20.w,
            ),
            height: 1.sh * 0.5,
            width: 1.sw * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customImage(image: AppStrings.inbox, height: 80, width: 80),
                verticalSpace(30.h),
                semiBoldText(
                  text: "Check your Inbox!",
                  fontSize: 25.sp,
                  color: AppColors.blackShade,
                ),
                verticalSpace(10.h),
                smallText(
                  text:
                      "An email has been sent to you. Click the link to reset your password.",
                  fontSize: 14.sp,
                  color: AppColors.greyColor,
                ),
                verticalSpace(20.h),
                CustomButton(
                  text: "CHECK MAIL",
                  onPress: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TipsScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
