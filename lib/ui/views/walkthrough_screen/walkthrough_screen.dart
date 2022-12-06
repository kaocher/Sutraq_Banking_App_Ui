import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sutraq/const/app_colors.dart';
import 'package:sutraq/ui/styles/app_dimensions.dart';
import 'package:sutraq/ui/views/auth_screen/login_screen.dart';
import 'package:sutraq/ui/views/walkthrough_screen/component/intro_slider.dart';
import 'package:sutraq/ui/views/walkthrough_screen/component/slider_model.dart';
import 'package:sutraq/widgets/custom_button.dart';
import 'package:sutraq/widgets/custom_expanded.dart';
import 'package:sutraq/widgets/custom_space.dart';
import 'package:sutraq/widgets/custom_text.dart';

class WalkThroughScreen extends StatefulWidget {
  const WalkThroughScreen({super.key});

  @override
  State<WalkThroughScreen> createState() => _WalkThroughScreenState();
}

class _WalkThroughScreenState extends State<WalkThroughScreen> {
  int _currentPage = 0;

  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    // Timer.periodic(Duration(seconds: 3), (Timer timer) {
    //   if (_currentPage < 2) {
    //     -_currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    //   _pageController.animateToPage(
    //     _currentPage,
    //     duration: const Duration(milliseconds: 300),
    //     curve: Curves.easeIn,
    //   );
    // });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 1.sh,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: Container(
                        // color: Colors.amber,
                        ),
                  ),
                  customExpanded(
                    child: Container(
                      width: 1.sw,
                      padding: AppPadding.bPadding(30),
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:  AppPadding.hPadding(30),
                            child: CustomButton(
                              text: "Login",
                              onPress: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                              },
                              buttonColor: AppColors.darkGreen,
                            ),
                          ),
                          verticalSpace(20),
                          boldText(
                              text: "Try Sutraq",
                              fontSize: 16,
                              color: AppColors.whiteColor),
                              
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                // top: 30.h,
                child: SizedBox(
                  height: 640.h,
                  width: 1.sw,
                  // color: Colors.purple,
                  child: PageView.builder(
                      itemCount: slideList.length,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return IntroSlider(
                          index: index,
                        );
                      }),
                ),
              ),
              Positioned(
                top: 340.h,
                left: 0,
                right: 0,
                child: Container(
                  height: 50.h,
                  // color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
