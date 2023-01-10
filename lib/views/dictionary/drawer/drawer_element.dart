import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/widgets/inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DrawerElement extends StatefulWidget {
  final String language;
  final String languageURL;

  const DrawerElement({
    super.key,
    required this.language,
    required this.languageURL,
  });

  @override
  State<DrawerElement> createState() => _DrawerElementState();
}

class _DrawerElementState extends State<DrawerElement> {
  // bool isTapped = false;
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: InkWellWidget(
        builder: (isTapped) {
          final color = isTapped ? AppColors.mainDarkBlue : Colors.white;

          return Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0.h),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(vertical: 2.0.h, horizontal: 1.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.language,
                      style: TextStyle(
                        color: color,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: color,
                      size: 3.0.h,
                    ),
                  ],
                ),
              ));
        },
        color: AppColors.mainAmber.withOpacity(0.7),
        borderRadius: BorderRadius.circular(2.0.h),
        onTap: () {},
      ),
    );
  }
}
