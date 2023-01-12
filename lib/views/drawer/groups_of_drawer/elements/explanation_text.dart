import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Text explanationText(String explanation) {
  return Text(
    explanation,
    style: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 1.5.h,
      color: AppColors.mainAmber,
    ),
    maxLines: 2,
    overflow: TextOverflow.ellipsis,
  );
}
