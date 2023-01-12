import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

BoxDecoration drawerBoxOfLanguages() {
    return BoxDecoration(
      color: AppColors.boxBlue,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.15),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(2, 1),
        ),
      ],
      borderRadius: BorderRadius.circular(2.0.h),
    );
  }