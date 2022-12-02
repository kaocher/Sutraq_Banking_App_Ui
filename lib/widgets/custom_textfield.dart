import 'package:flutter/material.dart';
import 'package:sutraq/widgets/custom_icon.dart';

import '../const/app_colors.dart';

Widget customTextField({
  IconData? prefixIcon,
  IconData? suffixIcon,
  bool obsecureText = false,
}) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusColor: AppColors.greenColor,
      prefixIcon: Icon(
        prefixIcon,
        color: AppColors.greenColor,
      ),
      suffixIcon: Icon(
        suffixIcon,
        color: AppColors.greyColor,
      ),
    ),
    obscureText: obsecureText,
  );
}
