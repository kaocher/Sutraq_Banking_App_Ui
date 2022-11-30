import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_strings.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_space.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_textfield.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 35.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                verticalSpace(30.h),
                customImage(
                    image: AppStrings.appLogo, height: 86.h, width: 94.w),
                verticalSpace(35.h),
                semiBoldText(
                  text: "Forgot Password?",
                  fontSize: 30.sp,
                ),
                verticalSpace(6.h),
                smallText(
                  text: "Enter the email address associated with your account to recover password.",
                  fontSize: 16,
                  color: AppColors.greyColor,
                ),
                verticalSpace(10.h),
                defaultText(
                  text: "Email Address",
                  fontSize: 14.sp,
                  color: AppColors.greyColor,
                ),
                verticalSpace(5.h),
                customTextField(
                  prefixIcon: Icons.email_outlined,
                ),

                verticalSpace(10.h),
                CustomButton(
                  text: "Recover PASSWORD",
                  onPress: () {},
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}