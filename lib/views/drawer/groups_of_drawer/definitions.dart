import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/drawer_box_of_languages.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/explanation_text.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/heading.dart';
import 'package:cambridgedictionary_try/views/drawer/inkwell/common_language_inkwell_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget definitions() => Column(
      children: [
        SizedBox(height: 3.5.h),
        heading('Definitions'),
        SizedBox(height: 0.75.h),
        explanationText(
            'Clear explanations of natural written and spoken English'),
        SizedBox(height: 2.0.h),
        Container(
          decoration: drawerBoxOfLanguages(),
          child: Column(
            children: [
              commonLanguageInkWellWidget('English', ''),
              commonLanguageInkWellWidget('Advanced American English', ''),
              commonLanguageInkWellWidget('Advanced British English', ''),
              commonLanguageInkWellWidget('Bisiness English', ''),
              commonLanguageInkWellWidget('Essential American English', ''),
              commonLanguageInkWellWidget('Essential British English', ''),
              commonLanguageInkWellWidget('Intermediate American English', ''),
              commonLanguageInkWellWidget('Essential British English', ''),
            ],
          ),
        ),
      ],
    );
