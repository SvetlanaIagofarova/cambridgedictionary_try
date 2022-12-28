import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainTheme {
  ThemeData mainTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.mainDarkBlue,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.mainAmber,
      selectionColor: AppColors.selectedColor,
      selectionHandleColor: AppColors.mainAmber,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.mainDarkBlue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.blueGrey,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        color: Colors.blueGrey,
        fontWeight: FontWeight.w300,
      ),
      isDense: true,
      contentPadding: EdgeInsets.all(1.5.h),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.mainDarkBlue,
        ),
      ),
    ),
  );
}
