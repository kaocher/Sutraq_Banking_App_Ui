import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/const/app_strings.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/views/dashboard_screen/component/custom_dialogue.dart';
import 'package:sutraq/ui/views/dashboard_screen/component/icon_and_text_column.dart';
import 'package:sutraq/ui/views/dashboard_screen/transaction_history_screen.dart';
import 'package:sutraq/widgets/custom_avatar.dart';
import 'package:sutraq/widgets/custom_button.dart';
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
      //bottomNavigationBar: BottomNavController(),
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              //Heading
              Container(
                padding: AppPadding.symmetricPadding(20, 10),
                height: 80,
                // color: Colors.yellow,
                child: ListTile(
                  leading: customAvatar(
                    radius: 20,
                    backgroundColor: Colors.purple,
                    isText: true,
                    text: semiBoldText(
                      text: "OP",
                      fontSize: 10,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  title: semiBoldText(
                    text: "Hello, Precious!",
                    color: AppColors.whiteColor,
                    fontSize: 16,
                  ),
                  subtitle: boldText(
                    text: "Su/Pre123",
                    color: AppColors.whiteColor.withOpacity(0.5),
                    fontSize: 10,
                  ),
                  trailing: const Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                  ),
                ),
              ),

              verticalSpace(10),
              //Horizontal Pageview item
              Container(
                height: 100.h,
                // color: Colors.yellow,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: AppPadding.lPadding(15),
                      height: 100.h,
                      width: 230.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
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
                                  color: AppColors.violet,
                                ),
                                const Spacer(),
                                Icon(
                                  Icons.visibility,
                                  size: 15.r,
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
                                  color: AppColors.greenColor,
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

              //Dot indicator
              Container(
                height: 20.h,
              ),

              //Green Container
              customExpanded(
                child: Column(
                  children: [
                    Container(
                      // color: Colors.yellow,
                      padding: AppPadding.symmetricPadding(10, 20),
                      height: 125.h,

                      //Icon & Text item
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          iconAndTextItem(
                            icon: Icons.wallet,
                            text: "Fund Wallet",
                            onPress: (() {
                              customDialogue(context);
                            }),
                          ),
                          iconAndTextItem(
                            icon: Icons.login_outlined,
                            text: "Send Money",
                            onPress: (() {
                             customDialogue(context);
                            }),
                          ),
                          iconAndTextItem(
                            icon: Icons.logout_outlined,
                            text: "Withdraw",
                            onPress: (() {
                             customDialogue(context);
                            }),
                          ),
                        ],
                      ),
                    ),

                    //Vertical List
                    customExpanded(
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

                            // Transaction List
                            Expanded(
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    height: 70.h,
                                    // color: Colors.red,
                                    child: Card(
                                      elevation: 0.5,
                                      child: ListTile(
                                        horizontalTitleGap: 20.w,
                                        leading: CircleAvatar(
                                            radius: 20.r,
                                            backgroundColor:
                                                AppColors.lightGreen,
                                            child: const Icon(
                                              Icons.call_made,
                                              color: AppColors.greenColor,
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
                                    ),
                                  );
                                },
                              ),
                            ),
                            Align(
                              child: GestureDetector(
                                onTap: (() {
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
            ],
          ),
        ),
      ),
    );
  }
}
