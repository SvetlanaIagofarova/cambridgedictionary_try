import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Text subheading(String subheadingText) {
  return Text(
    subheadingText,
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 2.25.h,
      color: AppColors.subheadingColor,
    ),
  );
}
