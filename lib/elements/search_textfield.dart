import 'package:cambridgedictionary_try/const/app_colors.dart';
import 'package:cambridgedictionary_try/example_of_words.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  bool isSearch = false;

  var filteredWords = <Word>[];

  final _searchController = TextEditingController();

  void _searchWords() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      filteredWords = words.where((Word word) {
        return word.word.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredWords = words;
    }
    setState(() {});
  }

  @override
  void initState() {
    filteredWords = words;
    _searchController.addListener(_searchWords);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){setState(() {
            isSearch = false;
          });},
      child: TextField(
        cursorColor: AppColors.mainAmber,
        style: TextStyle(
          color: AppColors.mainAmber,
          fontSize: 3.0.h,
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          suffixIcon: isSearch
              ? IconButton(
                  icon: const Icon(
                    Icons.clear,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              : IconButton(
                  icon: const Icon(
                    Icons.account_circle_outlined,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.white,
            fontSize: 3.0.h,
            fontWeight: FontWeight.w300,
          ),
          border: InputBorder.none,
        ),
        onTap: () {
          setState(() {
            isSearch = true;
          });
        },
      ),
    );
  }
}
