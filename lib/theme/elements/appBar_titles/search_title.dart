import 'package:cambridgedictionary_try/theme/elements/buttons/profile_button.dart';
import 'package:cambridgedictionary_try/views/dictionary/word_search_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchTitle extends StatefulWidget {
  const SearchTitle({super.key});

  @override
  State<SearchTitle> createState() => _SearchTitleState();
}

class _SearchTitleState extends State<SearchTitle> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => showSearch(
            context: context,
            delegate: WordSearchScreen(filteredWords: []),
          ),
          child: Text(
            'Search...',
            style: TextStyle(
              fontSize: 3.25.h,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const ProfileButton(),
      ],
    );
  }
}

  // bool isSearch = false;

  // final _searchController = TextEditingController();

  // void _searchWords() {
  //   final query = _searchController.text;
  //   if (query.isNotEmpty) {
  //     widget.filteredWords = words.where((Word word) {
  //       return word.wordName.toLowerCase().contains(query.toLowerCase());
  //     }).toList();
  //   } else {
  //     widget.filteredWords = words;
  //   }
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   widget.filteredWords = words;
  //   _searchController.addListener(_searchWords);
  //   super.initState();
  // }