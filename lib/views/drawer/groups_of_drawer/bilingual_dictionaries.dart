import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/drawer_box_of_languages.dart';
import 'package:cambridgedictionary_try/views/drawer/groups_of_drawer/elements/subheading.dart';
import 'package:cambridgedictionary_try/views/drawer/inkwell/bilingual_inkwelll_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget bilingualDictionaries() => Column(
      children: [
        SizedBox(height: 3.5.h),
        subheading('Bilingual Dictionaries'),
        SizedBox(height: 2.5.h),
        Container(
          decoration: drawerBoxOfLanguages(),
          child: Column(
            children: const [
              BilingualInkWellWidget(language1:'English', language2:'French', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'German', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'Indonesian', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'Italian', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'Japanese', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'Polish', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'Portuguese', urlLanguage1First:'', urlLanguage2First: ''),
              BilingualInkWellWidget(language1:'English', language2:'Spanish', urlLanguage1First:'', urlLanguage2First: ''),
            ],
          ),
        ),
      ],
    );
