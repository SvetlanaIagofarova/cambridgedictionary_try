import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/buttons/exchange_button.dart';
import 'package:cambridgedictionary_try/theme/elements/widgets/inkwell/inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BilingualInkWellWidget extends StatefulWidget {
  final String language1;
  final String language2;
  final String urlLanguage1First;
  final String urlLanguage2First;

  const BilingualInkWellWidget({
    super.key,
    required this.language1,
    required this.language2,
    required this.urlLanguage1First,
    required this.urlLanguage2First,
  });

  @override
  State<BilingualInkWellWidget> createState() => _BilingualInkWellWidgetState();
}

class _BilingualInkWellWidgetState extends State<BilingualInkWellWidget> {
  @override
  Widget build(BuildContext context) {
    String languageFirst = widget.language1;
    String languageSecond = widget.language2;
    bool swap = false;

    return InkWellWidget(
      onTap: () {},
      builder: (isTapped) {
        final color = isTapped ? AppColors.mainDarkBlue : Colors.white;
        Text Function(String a, String b, Color color) neededLanguage;

        if (swap) {
          neededLanguage = languageTwoFirst;
        } else {
          neededLanguage = languageTwoFirst;
        }

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0.h),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 1.0.h),
            child: Row(
              children: [
                ExchangeButton(
                  onTap: () {
                    setState(
                      () {
                        swap = !swap;
                      },
                    );
                  },
                ),
                SizedBox(width: 2.0.h),
                SizedBox(
                  width: 29.45.h,
                  child: languageOneFirst(
                    languageFirst,
                    languageSecond,
                    color,
                  ),
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

  Text languageOneFirst(
      String languageFirst, String languageSecond, Color color) {
    return Text(
      '$languageFirst - $languageSecond',
      style: TextStyle(
        color: color,
      ),
    );
  }

  Text languageTwoFirst(
      String languageFirst, String languageSecond, Color color) {
    return Text(
      '$languageSecond - $languageFirst',
      style: TextStyle(
        color: color,
      ),
    );
  }
}
