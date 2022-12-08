import 'package:cambridgedictionary_try/views/login_view.dart';
import 'package:cambridgedictionary_try/views/start_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(29, 42, 87, 1),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const StartPage(),
    );
  }
}
