import 'package:flutter/material.dart';

Widget customImage({
  required String image,
  double? height = 100,
  double? width = 100,
  Color? color = Colors.transparent,
}) {
  return Container(
    color: color,
    height: height,
    width: width,
    child: Image(
      image: AssetImage(image),
      fit: BoxFit.cover,
    ),
  );
}
