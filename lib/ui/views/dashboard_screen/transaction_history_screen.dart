import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/widgets/custom_avatar.dart';
import 'package:sutraq/widgets/custom_icon.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greyBg,
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
                child: Column(
                  children: [
                    Row(
                      children: [
                        customAvatar(
                          onTap: (() => Navigator.pop(context)),
                          radius: 20.r,
                          icon: customIcon(
                            icon: Icons.arrow_back,
                            size: 20.sp,
                          ),
                        ),
                        horizontalSpace(30.w),
                        boldText(
                          text: "Transaction History",
                          fontSize: 18.sp,
                        ),
                      ],
                    ),
                    verticalSpace(20.h),
                    Container(
                      height: 50.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: AppColors.greenColor,
                            width: 2,
                            strokeAlign: StrokeAlign.inside),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15).w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            smallText(
                                text: "Naira Account: N190,000",
                                fontSize: 13.sp),
                            customIcon(
                              icon: Icons.arrow_drop_down_outlined,
                              color: AppColors.greenColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    verticalSpace(35.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        defaultText(
                          text: "All Transactions",
                          fontSize: 13.sp,
                          color: AppColors.blueColor,
                        ),
                        defaultText(
                          text: "Debits",
                          fontSize: 12.sp,
                          color: AppColors.darkGrey,
                        ),
                        defaultText(
                          text: "Credits",
                          fontSize: 12.sp,
                          color: AppColors.darkGrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ColoredBox(
                  color: AppColors.whiteColor,

                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 0.5,
                        child: ListTile(
                          horizontalTitleGap: 20.w,
                          leading: CircleAvatar(
                              radius: 20.sp,
                              backgroundColor: AppColors.lightGreen,
                              child: const Icon(
                                Icons.call_made,
                                color: AppColors.greenColor,
                              )),
                          title: semiBoldText(
                            text: "Access Bank ",
                            color: AppColors.violet,
                            fontSize: 14.sp,
                          ),
                          subtitle: smallText(
                              text: "28, Jan 2020",
                              color: AppColors.greyColor,
                              fontSize: 10.sp),
                          trailing: semiBoldText(
                              text: "\$2,400",
                              color: AppColors.violet,
                              fontSize: 14.sp),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
