import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: Column(
        children: [
          SocialNetworkAuth(),
          const Text('OR'),
          LoginFields(),
        ],
      ),
    );
  }
}

class SocialNetworkAuth extends StatelessWidget {
  const SocialNetworkAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Log in with your social network'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/facebook_label.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/google_label.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/svg/apple_label.svg'),
            ),
          ],
        ),
      ],
    );
  }
}

class LoginFields extends StatefulWidget {
  const LoginFields({super.key});

  @override
  State<LoginFields> createState() => _LoginFieldsState();
}

class _LoginFieldsState extends State<LoginFields> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Email Address'),
        SizedBox(height: 2.h),
        TextField(),
        SizedBox(height: 2.h),
        const Text('Password'),
        SizedBox(height: 2.h),
        TextField(),
      ],
    );
  }
}
