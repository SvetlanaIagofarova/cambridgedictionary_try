import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/example_of_words.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WordSearchScreen extends SearchDelegate<Word> {
  final List<Word> filteredWords;

  WordSearchScreen({required this.filteredWords});

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context).copyWith(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: AppColors.mainAmber,
          fontSize: 3.25.h,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
    return theme;
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(
          Icons.clear,
          color: AppColors.mainAmber,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.mainAmber,
      ),
      onPressed: () {
        close(
          context,
          Word(
              wordName: '',
              wordClass: '',
              transcription: '',
              translation: '',
              pronunciationButtonUrl: '',
              date: DateTime.now()),
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<Word> words = filteredWords
        .where(
          (Word word) => word.wordName.toLowerCase().contains(
                query.toLowerCase(),
              ),
        )
        .toList();

    return ListView.builder(
      itemCount: words.length,
      itemBuilder: (context, index) => ListTile(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container();
  }
}
