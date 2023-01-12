import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/widgets/inkwell/inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget commonLanguageInkWellWidget(String language, String languageURL) {
  return InkWellWidget(
    onTap: () {},
    builder: (isTapped) {
      final color = isTapped ? AppColors.mainDarkBlue : Colors.white;

      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.0.h),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 1.0.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                language,
                style: TextStyle(
                  color: color,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: color,
                size: 3.0.h,
              ),
            ],
          ),
        ),
      );
    },
    color: AppColors.mainAmber.withOpacity(0.7),
    borderRadius: BorderRadius.circular(2.0.h),
  );
}