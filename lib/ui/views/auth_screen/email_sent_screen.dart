import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
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
            padding: AppPadding.hPadding(20),
            height: 0.5.sh,
            width: 0.8.sw,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customAssetImage(image: AppStrings.inbox, height: 80, width: 80),
                verticalSpace(30.h),
                semiBoldText(
                  text: "Check your Inbox!",
                  fontSize: 25,
                  color: AppColors.blackShade,
                ),
                verticalSpace(10),
                smallText(
                  text:
                      "An email has been sent to you. Click the link to reset your password.",
                  fontSize: 14,
                  color: AppColors.greyColor,
                  textAlign: TextAlign.center
                ),
                verticalSpace(20),
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
