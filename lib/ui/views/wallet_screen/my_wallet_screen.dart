import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/views/dashboard_screen/transaction_history_screen.dart';
import 'package:sutraq/widgets/custom_text.dart';

import '../../../const/app_colors.dart';
import '../../../const/app_strings.dart';
import '../../../widgets/custom_image.dart';
import '../../../widgets/custom_space.dart';
import '../dashboard_screen/component/icon_and_text_column.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightRed2,
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            children: [
              Container(
                padding: AppPadding.symmetricPadding(20, 10),
                height: 80.h,
                // color: Colors.yellow,
                child: Center(
                  child: boldText(
                    text: "My Wallets",
                    fontSize: 20,
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
                        color: AppColors.violet,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: AppPadding.allPadding(12),
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
                                boldText(
                                    text: "SUTRAQ CURRENCY",
                                    fontSize: 12,
                                    color: AppColors.whiteColor),
                                const Spacer(),
                                Icon(
                                  Icons.visibility,
                                  size: 15.r,
                                  color: AppColors.whiteColor,
                                ),
                              ],
                            ),
                            boldText(
                              text: "AVAILABLE BALANCE",
                              fontSize: 8,
                              color: AppColors.greyColor,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                boldText(
                                  text: "Q190,000",
                                  fontSize: 20,
                                  color: AppColors.whiteColor,
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 20.r,
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
              Padding(
                padding: AppPadding.allPadding(20),
                child: Flexible(
                  child: Container(
                    height: 550.h,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.yellow,
                          padding: AppPadding.symmetricPadding(10, 20),
                          height: 125.h,

                          //Icon & Text item
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [],
                          ),
                        ),

                        //Vertical List
                        Container(
                          color: AppColors.whiteColor,
                          child: Padding(
                            padding: AppPadding.tlrbPadding(15, 25, 25, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                semiBoldText(
                                  text: "Recent Transactions",
                                  fontSize: 15,
                                ),
                                verticalSpace(10),
                                Container(
                                  height: 310.h,
                                  child: Expanded(
                                    child: ListView.builder(
                                      physics: const BouncingScrollPhysics(),
                                      itemCount: 10,
                                      itemBuilder:
                                          (BuildContext context, int index) {
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
                                                    radius: 20.r,
                                                    backgroundColor:
                                                        AppColors.lightGreen,
                                                    child: const Icon(
                                                      Icons.call_made,
                                                      color:
                                                          AppColors.greenColor,
                                                    )),
                                                title: semiBoldText(
                                                  text: "Access Bank ",
                                                  color: AppColors.violet,
                                                  fontSize: 14,
                                                ),
                                                subtitle: smallText(
                                                  text: "28, Jan 2020",
                                                  color: AppColors.greyColor,
                                                  fontSize: 10,
                                                ),
                                                trailing: semiBoldText(
                                                  text: "\$2,400",
                                                  color: AppColors.violet,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Container(
                                  color: Colors.transparent,
                                  alignment: Alignment.center,
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
                                      fontSize: 14,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
