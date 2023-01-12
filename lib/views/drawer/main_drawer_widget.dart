import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/bilingual_dictionaries.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/definitions.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/recent_and_recomended.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/semi_bilingual_dictionaries.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/translation.dart';
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
          clipBehavior: Clip.none,
          children: <Widget>[
            recentAndRecomended(),
            definitions(),
            translation(),
            bilingualDictionaries(),
            semiBilingualDictionaries(),
            SizedBox(height: 1.5.h),
          ],
        ),
      ),
    );
  }
}
