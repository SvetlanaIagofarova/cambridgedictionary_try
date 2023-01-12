import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/explanation_text.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/heading.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget translation() => Column(
      children: [
        SizedBox(height: 3.5.h),
        heading('Translation'),
        SizedBox(height: 0.75.h),
        explanationText(
            'Click on the arrows to change the translation direction'),
      ],
    );
