import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:cambridgedictionary_try/theme/main_theme.dart';
import 'package:cambridgedictionary_try/views/auth/login_view.dart';
import 'package:cambridgedictionary_try/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: MainTheme().mainTheme,
          debugShowCheckedModeBanner: false,
          routes: {
            '/login_view': (context) => const LoginView(),
            '/main_view': (context) => const MainView(),
          },
          initialRoute: '/main_view',
        );
      },
    );
  }
}
