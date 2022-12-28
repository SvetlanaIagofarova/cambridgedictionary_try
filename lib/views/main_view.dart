import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/appBar_title/grammar_title.dart';
import 'package:cambridgedictionary_try/theme/elements/appBar_title/search_title.dart';
import 'package:cambridgedictionary_try/theme/elements/appBar_title/thesaurus_title.dart';
import 'package:cambridgedictionary_try/views/dictionary/word_search_screen.dart';
import 'package:cambridgedictionary_try/views/dictionary/words_list.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedTab = 0;
  Widget _title = const SearchTitle();

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
      switch (index) {
        case 0:
          _title = const SearchTitle();
          break;
        case 1:
          _title = const ThesaurusTitle();
          break;
        case 2:
          _title = const GrammarTitle();
          break;
      }
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return
        // GestureDetector(
        //   onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        //   child:
        Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: _title,
      ),
      backgroundColor: AppColors.mainAmber,
      body: IndexedStack(
        index: _selectedTab,
        children: const [
          CashedWordsList(),
          Text(
            'Thesaurus',
          ),
          Text(
            'Grammar',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Dictionary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined),
            label: 'Thesaurus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rule),
            label: 'Grammar',
          ),
          // BottomNavigationBarItem(
        ],
        onTap: onSelectTab,
      ),
    );
    // );
  }
}
