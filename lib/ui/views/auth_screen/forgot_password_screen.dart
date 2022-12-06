import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/views/auth_screen/email_sent_screen.dart';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Padding(
            padding: AppPadding.symmetricPadding(50, 35),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpace(30),
                  customAssetImage(
                      image: AppStrings.appLogo, height: 86, width: 94),
                  verticalSpace(35),
                  semiBoldText(
                    text: "Forgot Password?",
                    fontSize: 30,
                    color: AppColors.blackShade
                  ),
                  verticalSpace(6),
                  smallText(
                    text:
                        "Enter the email address associated with your account to recover password.",
                    fontSize: 16,
                    color: AppColors.greyColor,
                    textAlign: TextAlign.center,
                  ),
                  verticalSpace(10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: defaultText(
                      text: "Email Address",
                      fontSize: 14,
                      color: AppColors.greyColor,
                    ),
                  ),
                  verticalSpace(5),
                  customTextField(
                    prefixIcon: Icons.email_outlined,
                  ),
                  verticalSpace(10),
                  CustomButton(
                    text: "RECOVER PASSWORD",
                    onPress: (() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SentEmailScreen()));
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
