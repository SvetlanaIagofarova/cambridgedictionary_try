import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/widgets/inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainDrawerWidget extends StatefulWidget {
  const MainDrawerWidget({super.key});

  @override
  State<MainDrawerWidget> createState() => _MainDrawerWidgetState();
}

class _MainDrawerWidgetState extends State<MainDrawerWidget> {
  final padding = EdgeInsets.symmetric(horizontal: 2.0.h);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: padding,
        color: AppColors.mainDarkBlue,
        child: ListView(
          children: [
            SizedBox(height: 1.5.h),
            headerText('Recent and recommended'),
            SizedBox(height: 2.5.h),
            Container(
              decoration: BoxDecoration(
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
              ),
              child: Column(
                children: [
                  InkWellWidget(
                    onTap: () {},
                    builder: (isTapped) {
                      final color =
                          isTapped ? AppColors.mainDarkBlue : Colors.white;

                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.0.h),
                        child: chooseLanguage('English', '', color),
                      );
                    },
                    color: AppColors.mainAmber.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(2.0.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Text headerText(String header) {
  return Text(
    header,
    style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 2.5.h,
      color: Colors.white,
    ),
  );
}

Widget chooseLanguage(String language, String languageURL, Color fontColor) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 1.0.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          language,
          style: TextStyle(
            color: fontColor,
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: fontColor,
          size: 3.0.h,
        ),
      ],
    ),
  );
}


// chooseLanguage('English-Turkish', ''),
//                   chooseLanguage('English-Arabic', ''),