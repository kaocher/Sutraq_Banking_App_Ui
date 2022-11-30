import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/views/dashboard_screen/component/icon_and_text_column.dart';
import 'package:sutraq/ui/views/dashboard_screen/transaction_history_screen.dart';
import 'package:sutraq/widgets/custom_avatar.dart';
import 'package:sutraq/widgets/custom_expanded.dart';
import 'package:sutraq/widgets/custom_image.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkGreen,
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                height: 80.h,
                // color: Colors.yellow,
                child: ListTile(
                  leading: customAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.purple,
                    isText: true,
                    text: semiBoldText(
                      text: "OP",
                      fontSize: 10.sp,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  title: semiBoldText(
                      text: "Hello, Precious!",
                      color: AppColors.whiteColor,
                      fontSize: 16.sp,),
                  subtitle: boldText(
                      text: "Su/Pre123",
                      color: AppColors.whiteColor.withOpacity(0.5),
                      fontSize: 10.sp),
                  trailing: const Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 100.h,
                // color: Colors.yellow,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(left: 15).w,
                      height: 100.h,
                      width: 230.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
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
                                boldText(
                                    text: "SUTRAQ CURRENCY",
                                    fontSize: 12.sp,
                                    color: AppColors.violet),
                                const Spacer(),
                                Icon(
                                  Icons.visibility,
                                  size: 15.sp,
                                ),
                              ],
                            ),
                            boldText(
                              text: "AVAILABLE BALANCE",
                              fontSize: 8.sp,
                              color: AppColors.greyColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                boldText(
                                  text: "Q190,000",
                                  fontSize: 20.sp,
                                  color: AppColors.greenColor,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 20.sp,
                                  color: AppColors.greenColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 20.h,
                // color: Colors.blue,
              ),
              customExpanded(
                child: Column(
                  children: [
                    Container(
                      // color: Colors.yellow,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      height: 125.h,

                      //Icon & Text item
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          iconAndTextItem(
                              icon: const Icon(Icons.wallet),
                              text: "Fund Wallet",
                             onPress: ((){
                               Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TransactionHistory(),
                                    ),
                                  );
                             })
                             ),
                          iconAndTextItem(
                            icon: const Icon(Icons.login_outlined),
                            text: "Send Money",
                          onPress: (){
                            print("Tapped");
                          }
                          ),
                          iconAndTextItem(
                            icon: const Icon(Icons.logout_outlined),
                            text: "Withdraw",
                            onPress: () {
                              
                            }
                          ),
                        ],
                      ),
                    ),

                    //Vertical List
                    customExpanded(
                      color: AppColors.whiteColor,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 25.w, right: 25.w, top: 15.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            semiBoldText(
                                text: "Recent Transactions", fontSize: 15.sp),
                            verticalSpace(10.h),
                            Expanded(
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    height: 85.h,
                                    // color: Colors.red,
                                    child: Column(
                                      children: [
                                        Divider(
                                          thickness: 1.h,
                                        ),
                                        ListTile(
                                          
                                          contentPadding: EdgeInsets.zero,
                                          leading: CircleAvatar(
                                              radius: 20.sp,
                                              backgroundColor:
                                                  AppColors.lightGreen,
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
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Align(
                              child: GestureDetector(
                                onTap: (() {
                                  print("Tapped");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TransactionHistory(),
                                    ),
                                  );
                                }),
                                child: boldText(
                                  text: "View All",
                                  fontSize: 14.sp,
                                  color: AppColors.greenColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
