import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _selectedTab = 0;
  String _title = '';

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
      switch (index) {
        case 0:
          _title = 'Search';
          break;
        case 1:
          _title = 'Thesaurus';
          break;
        case 2:
          _title = 'Grammar';
          break;
      }
    });
  }

  final List<Widget> _widgetOptions = const [
    Text(
      'Dictionary',
    ),
    Text(
      'Thesaurus',
    ),
    Text(
      'Grammar',
    ),
  ];


  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(_title),
      ),
      backgroundColor: AppColors.mainAmber,
      body: _widgetOptions[_selectedTab],
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
