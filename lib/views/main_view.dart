import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/elements/appBar_titles/grammar_title.dart';
import 'package:cambridgedictionary_try/theme/elements/appBar_titles/search_title.dart';
import 'package:cambridgedictionary_try/theme/elements/appBar_titles/thesaurus_title.dart';
import 'package:cambridgedictionary_try/views/drawer/main_drawer_widget.dart';
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
  Widget? _drawer = const MainDrawerWidget();

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
      switch (index) {
        case 0:
          _title = const SearchTitle();
          _drawer = const MainDrawerWidget();
          break;
        case 1:
          _title = const ThesaurusTitle();
          _drawer = null;
          break;
        case 2:
          _title = const GrammarTitle();
          _drawer = null;
          break;
      }
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: _title,
      ),
      drawer: Container(
        width: 46.5.h,
        child: _drawer,
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
  }
}
