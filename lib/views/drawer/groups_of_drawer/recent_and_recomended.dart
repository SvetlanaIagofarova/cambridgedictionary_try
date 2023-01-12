import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/drawer_box_of_languages.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/heading.dart';
import 'package:cambridgedictionary_try/views/drawer/inkwell/common_language_inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget recentAndRecomended() => Column(
      children: [
        SizedBox(height: 2.0.h),
        heading('Recent and recommended'),
        SizedBox(height: 2.5.h),
        Container(
          decoration: drawerBoxOfLanguages(),
          child: Column(
            children: [
              commonLanguageInkWellWidget('English', ''),
              commonLanguageInkWellWidget('English-Turkish', ''),
              commonLanguageInkWellWidget('English-Arabic', ''),
            ],
          ),
        ),
      ],
    );
