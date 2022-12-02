

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_image.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

Future customAlertDialigue(context,
{
required String image,
required String country,
required String amount,
required String buttonText,
}
){
  return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            scrollable: true,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            title: Column(
              children: [
                defaultText(
                    text: "Choose option",
                    fontSize: 18.sp,
                    color: AppColors.darkGrey),
                smallText(
                  text: "Pick a card to continue.",
                  fontSize: 12.sp,
                  color: AppColors.blackColor.withOpacity(.5),
                ),
              ],
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80.h,
                  width: 80.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.lightRed2),),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            customImage(
                              image: image,
                              height: 12.h,
                              width: 14.w,
                            ),
                            horizontalSpace(5.w),
                            defaultText(
                              text: country,
                              fontSize: 12.sp,
                              color: AppColors.violet,
                            ),
                          ],
                        ),
                        semiBoldText(
                          text: amount,
                          fontSize: 16.sp,
                          color: AppColors.violet,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80.h,
                  width: 80.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.lightRed2)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            customImage(
                              image: AppStrings.appLogo,
                              height: 12.h,
                              width: 14.w,
                            ),
                            horizontalSpace(5.w),
                            defaultText(
                              text: "GBP",
                              fontSize: 12.sp,
                              color: AppColors.violet,
                            ),
                          ],
                        ),
                        semiBoldText(
                          text: "£500",
                          fontSize: 16.sp,
                          color: AppColors.violet,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 80.h,
                  width: 80.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.lightRed2)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0).r,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            customImage(
                              image: AppStrings.appLogo,
                              height: 12.h,
                              width: 14.w,
                            ),
                            horizontalSpace(5.w),
                            defaultText(
                              text: "GBP",
                              fontSize: 12.sp,
                              color: AppColors.violet,
                            ),
                          ],
                        ),
                        semiBoldText(
                          text: "£500",
                          fontSize: 16.sp,
                          color: AppColors.violet,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            actions: [
              CustomButton(
                text: buttonText,
                onPress: () {},
              ),
            ],
            actionsPadding: EdgeInsets.all(15.r),
          );
        });
}