import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/views/auth_screen/forgot_password_screen.dart';
import 'package:sutraq/ui/views/auth_screen/tips_screen.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_image.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';
import 'package:sutraq/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Padding(
            padding: AppPadding.tlrbPadding(35, 25, 25, 0),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  verticalSpace(30.h),
                  customAssetImage(
                      image: AppStrings.appLogo, height: 86, width: 94),
                  verticalSpace(35),
                  semiBoldText(
                    text: "Welcome Back!",
                    fontSize: 30,
                  ),
                  verticalSpace(6),
                  smallText(
                    text: "Enter your details to continue",
                    fontSize: 13,
                    color: AppColors.greyColor,
                  ),
                  verticalSpace(40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      defaultText(
                    text: "Email Address",
                    fontSize: 14,
                    color: AppColors.greyColor,
                  ),
                  verticalSpace(5),
                  customTextField(
                    prefixIcon: Icons.email_outlined,
                  ),
                  verticalSpace(15.h),
                  defaultText(
                    text: "Password",
                    fontSize: 14,
                    color: AppColors.greyColor,
                  ),
                    ],
                  ),
                  verticalSpace(5),
                  customTextField(
                    prefixIcon: Icons.lock_outlined,
                    suffixIcon: Icons.visibility_outlined,
                    obsecureText: true,
                  ),
                  verticalSpace(5),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: (){
                         Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ForgotPassScreen()));
                      },
                      child: smallText(
                        text: "Forgot Password?",
                        color: AppColors.greenColor,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  verticalSpace(10),
                  CustomButton(
                    text: "LOGIN",
                    onPress: () {
                       Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TipsScreen()));
                    },
                  ),
                  verticalSpace(25.h),
                  boldText(
                    text: "Need an Account? Try Sutraq",
                    fontSize: 14,
                    color: AppColors.darkGrey,
                  ),
                  verticalSpace(50),
                  customAssetImage(
                    image: AppStrings.fingerPrint,
                    height: 60,
                    width: 60,
                  ),
                  verticalSpace(15),
                  defaultText(
                    text: "Tap to use fingerprint",
                    fontSize: 12,
                    color: AppColors.greenColor,
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
