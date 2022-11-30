import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_icon.dart';
import 'package:sutraq/widgets/custom_image.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';
import 'package:sutraq/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
                  text: "Welcome Back!",
                  fontSize: 30.sp,
                ),
                verticalSpace(6.h),
                smallText(
                  text: "Enter your details to continue",
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
                defaultText(
                  text: "Password",
                  fontSize: 14.sp,
                  color: AppColors.greyColor,
                ),
                verticalSpace(5.h),
                customTextField(
                  prefixIcon: Icons.lock_outlined,
                  suffixIcon: Icons.visibility_outlined,
                  obsecureText: true,
                ),
                verticalSpace(5.h),
                smallText(
                  text: "Forgot Password?",
                  color: AppColors.greenColor,
                  fontSize: 11.sp,
                ),
                verticalSpace(10.h),
                CustomButton(
                  text: "Login",
                  onPress: () {},
                ),
                verticalSpace(25.h),
                boldText(
                  text: "Need an Account? Try Sutraq",
                  fontSize: 14.sp,
                  color: AppColors.darkGrey,
                ),
                verticalSpace(40.h),
                defaultText(text: "Tap to use fingerprint", fontSize: 12.sp, color: AppColors.greenColor)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
