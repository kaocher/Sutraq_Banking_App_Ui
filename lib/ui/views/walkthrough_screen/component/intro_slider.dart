import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/views/walkthrough_screen/component/slider_model.dart';

import '../../../../widgets/custom_space.dart';
import '../../../../widgets/custom_text.dart';

class IntroSlider extends StatelessWidget {
  final int index;
  const IntroSlider({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 20.h,
          left: 30.w,
          right: 30.w,
          child: Container(
            height: 300.h,
            // color: Colors.blue,
            child: Image.asset(
              slideList[index].image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0.55.sh,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 30).w,
            height: 160.h,
            width: 1.sw,
            // color: Colors.amber,
            child: Column(
              children: [
                semiBoldText(text: slideList[index].title, fontSize: 27.sp,color: AppColors.whiteColor),
                verticalSpace(20.h),
                smallText(text: slideList[index].desc, fontSize: 16.sp,color: AppColors.whiteColor),
              ],
            ),
          ),
        )
      ],
    );
  }
}
