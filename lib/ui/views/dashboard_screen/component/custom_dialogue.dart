import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_image.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

Future customDialogue(
  context,
//   {
//   required String image,
//   required String country,
//   required String amount,
//   required String buttonText,
// }
) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 300.h,
            padding: AppPadding.allPadding(20),
            child: Column(
              children: [
                defaultText(
                  text: "Choose option",
                  fontSize: 18,
                  color: AppColors.darkGrey,
                ),
                verticalSpace(10),
                smallText(
                  text: "Pick a card to continue.",
                  fontSize: 12,
                  color: AppColors.blackColor.withOpacity(0.4),
                ),
                verticalSpace(10),
                //
                Container(
                  //color: Colors.yellow,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80.w,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.lightRed2)),
                        child: Padding(
                          padding: AppPadding.allPadding(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  customAssetImage(
                                    image: AppStrings.appLogo,
                                    height: 12,
                                    width: 14,
                                  ),
                                  horizontalSpace(5),
                                  defaultText(
                                    text: "NGN",
                                    fontSize: 12,
                                    color: AppColors.violet,
                                  ),
                                ],
                              ),
                              semiBoldText(
                                text: "N12,00",
                                fontSize: 14,
                                color: AppColors.violet,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80.w,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.lightRed2)),
                        child: Padding(
                          padding: AppPadding.allPadding(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  customAssetImage(
                                    image: AppStrings.appLogo,
                                    height: 12,
                                    width: 14,
                                  ),
                                  horizontalSpace(5),
                                  defaultText(
                                    text: "GBP",
                                    fontSize: 12,
                                    color: AppColors.violet,
                                  ),
                                ],
                              ),
                              semiBoldText(
                                text: "£500",
                                fontSize: 14,
                                color: AppColors.violet,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80.w,
                        width: 80.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.lightRed2)),
                        child: Padding(
                          padding: AppPadding.allPadding(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  customAssetImage(
                                    image: AppStrings.appLogo,
                                    height: 12,
                                    width: 14,
                                  ),
                                  horizontalSpace(5),
                                  defaultText(
                                    text: "GBP",
                                    fontSize: 12,
                                    color: AppColors.violet,
                                  ),
                                ],
                              ),
                              semiBoldText(
                                text: "\$500",
                                fontSize: 14,
                                color: AppColors.violet,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                CustomButton(
                  text: "WITHDRAW FUNDS",
                  onPress: (() => Null),
                ),
              ],
            ),
          ),
        );
      });
}
