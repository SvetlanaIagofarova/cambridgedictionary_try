import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/drawer_box_of_languages.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/subheading.dart';
import 'package:cambridgedictionary_try/views/drawer/inkwell/common_language_inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget semiBilingualDictionaries() => Column(
      children: [
        SizedBox(height: 3.5.h),
        subheading('Semi-bilingual Dictionaries'),
        SizedBox(height: 2.5.h),
        Container(
          decoration: drawerBoxOfLanguages(),
          child: Column(
            children: [
              commonLanguageInkWellWidget('English-Arabic', ''),
              commonLanguageInkWellWidget('English-Catalan', ''),
              commonLanguageInkWellWidget('English-Chinese (Simplified)', ''),
              commonLanguageInkWellWidget('English-Chinese (Traditional)', ''),
              commonLanguageInkWellWidget('English-Czech', ''),
              commonLanguageInkWellWidget('English-Danish', ''),
              commonLanguageInkWellWidget('Dutch-English', ''),
              commonLanguageInkWellWidget('English-Korean', ''),
              commonLanguageInkWellWidget('English-Malay', ''),
              commonLanguageInkWellWidget('English-Norwegian', ''),
              commonLanguageInkWellWidget('English-Russian', ''),
              commonLanguageInkWellWidget('English-Thai', ''),
              commonLanguageInkWellWidget('English-Turkish', ''),
              commonLanguageInkWellWidget('English-Vietnamese', ''),
            ],
          ),
        ),
      ],
    );
