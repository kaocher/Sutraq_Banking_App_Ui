import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/views/walkthrough_screen/component/slider_model.dart';
import 'package:sutraq/widgets/custom_image.dart';

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
          child: customAssetImage(
            image: slideList[index].image,
            height: 300,
          ),
        ),
        Positioned(
          top: 0.55.sh,
          child: Container(
            padding: AppPadding.hPadding(30),
            height: 160.h,
            width: 1.sw,
            // color: Colors.amber,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                semiBoldText(
                    text: slideList[index].title,
                    fontSize: 23,
                    color: AppColors.whiteColor),
                verticalSpace(20),
                smallText(
                    text: slideList[index].desc,
                    fontSize: 15,
                    color: AppColors.whiteColor),
              ],
            ),
          ),
        )
      ],
    );
  }
}
