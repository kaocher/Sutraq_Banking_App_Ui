import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/views/dashboard_screen/dash_board_screen.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_image.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.violet2,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 100.h,
            horizontal: 40.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              customImage(
                image: AppStrings.light,
                height: 170.h,
                width: 170.h,
              ),
              CustomButton(
                text: "GOT IT!",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DashBoardScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
