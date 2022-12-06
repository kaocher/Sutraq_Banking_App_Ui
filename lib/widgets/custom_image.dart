import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget customAssetImage({
  required String image,
  double? height = 100,
  double? width = 100,
  Color? color = Colors.transparent,
}) {
  return Container(
    color: color,
    height: height!.h,
    width: width!.w,
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.cover,
    ),
  );
}
