import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDimension {
//Responsive Font
  static double font07 = 7.sp;
  static double font10 = 10.sp;
  static double font12 = 12.sp;
  static double font13 = 13.sp;
  static double font14 = 14.sp;
  static double font15 = 15.sp;
  static double font16 = 16.sp;
  static double font17 = 17.sp;
  static double font18 = 18.sp;
  static double font20 = 20.sp;
  static double font22 = 22.sp;
  static double font24 = 24.sp;
  static double font27 = 27.sp;
  static double font30 = 30.sp;
}

class AppPadding {
  //Vertical Padding
  static EdgeInsetsGeometry vPadding(double height) {
    return EdgeInsets.symmetric(vertical: height.h);
  }

//Horizontal Padding
  static EdgeInsetsGeometry hPadding(double width) {
    return EdgeInsets.symmetric(horizontal: width.w);
  }

//Vertical & Horizontal Padding
  static EdgeInsetsGeometry symmetricPadding(
    double vertical,
    double horizontal,
  ) {
    return EdgeInsets.symmetric(
      vertical: vertical.h,
      horizontal: horizontal.w,
    );
  }

//Top Padding
  static EdgeInsetsGeometry tPadding(double height) {
    return EdgeInsets.only(top: height.h);
  }

//Bottom Padding
  static EdgeInsetsGeometry bPadding(double height) {
    return EdgeInsets.only(bottom: height.h);
  }

//Left Padding

  static EdgeInsetsGeometry lPadding(double width) {
    return EdgeInsets.only(left: width.w);
  }

//Right Padding
  static EdgeInsetsGeometry rPadding(double width) {
    return EdgeInsets.only(right: width.w);
  }

//Top, Left, Right, Bottom Padding
  static EdgeInsetsGeometry tlrbPadding(
    double top,
    double left,
    double right,
    double bottom,
  ) {
    return EdgeInsets.only(
      top: top.h,
      left: left.w,
      right: right.w,
      bottom: bottom.h,
    );
  }

//All Side Padding
  static EdgeInsetsGeometry allPadding(double padding) {
    return EdgeInsets.all(padding.r);
  }
}
