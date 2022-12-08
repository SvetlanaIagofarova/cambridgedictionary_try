import 'package:cambridgedictionary_try/buttons/gradient_button.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(254, 196, 0, 5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 150),
            const HeaderWidget(),
            const SizedBox(height: 230),
            MyGradientButton(
              onPressed: () {},
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(29, 42, 87, 1),
                  Color.fromRGBO(29, 42, 87, 1),
                ],
              ),
              child: const Text('Log in'),
            ),
            const SizedBox(height: 10),
            MyGradientButton(
              onPressed: () {},
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(29, 42, 87, 1),
                  Color.fromRGBO(254, 196, 0, 5),
                ],
              ),
              child: const Text('Sign up'),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Image(
          image: AssetImage('assets/logocambridge.png'),
        ),
        SizedBox(height: 25),
        Text(
          'Make your words meaningful',
          style: TextStyle(
            color: Color.fromRGBO(29, 42, 87, 1),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
