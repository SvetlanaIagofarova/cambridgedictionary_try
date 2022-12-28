import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/buttons/pronounced_button.dart';
import 'package:cambridgedictionary_try/example_of_words.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:sticky_grouped_list/sticky_grouped_list.dart';

class CashedWordsList extends StatefulWidget {
  const CashedWordsList({super.key});

  @override
  State<CashedWordsList> createState() => _CashedWordsListState();
}

class _CashedWordsListState extends State<CashedWordsList> {

  @override
  Widget build(BuildContext context) {
    return StickyGroupedListView(
      elements: words,
      groupBy: (Word word) => DateTime(
        word.date.year,
        word.date.month,
        word.date.day,
      ),
      floatingHeader: true,
      order: StickyGroupedListOrder.DESC,
      groupSeparatorBuilder: _getGroupSeparator,
      itemBuilder: _getWord,
    );
  }
}

Widget _getGroupSeparator(Word word) {
  return SizedBox(
    height: 10.h,
    child: Align(
      alignment: Alignment.center,
      child: Container(
        width: 20.h,
        decoration: BoxDecoration(
          color: AppColors.aBitTransparentDarkBlue,
          border: Border.all(color: AppColors.aBitTransparentDarkBlue),
          borderRadius: BorderRadius.all(Radius.circular(4.0.h)),
        ),
        child: Padding(
          padding: EdgeInsets.all(2.0.h),
          child: Text(
            '${word.date.day}. ${word.date.month}. ${word.date.year}',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

// TextButton(
//   onPressed: () {},
//   child: const Text(
//     'Clear',
//   textAlign: TextAlign.right,),
// ),

Widget _getWord(BuildContext ctx, Word word) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(1.0.h),
    ),
    elevation: 2.0.h,
    margin: EdgeInsets.symmetric(
      vertical: 1.0.h,
      horizontal: 2.0.h,
    ),
    child: SizedBox(
      child: ListTile(
        isThreeLine: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 2.0.h,
          vertical: 1.0.h,
        ),
        onTap: () {},
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  word.wordName,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(width: 2.0.h),
                Text(
                  word.transcription,
                  style: const TextStyle(color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(height: 0.5.h),
            Text(
              word.wordClass,
              style: TextStyle(fontSize: 2.0.h),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 1.0.h),
          ],
        ),
        subtitle: Text(
          word.translation,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: PronouncedIconButton(urlWord: word.pronunciationButtonUrl),
      ),
    ),
  );
}


