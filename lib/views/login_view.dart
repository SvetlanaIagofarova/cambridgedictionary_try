import 'package:cambridgedictionary_try/buttons/gradient_button.dart';
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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(254, 196, 0, 5),
          appBar: AppBar(
            title: const Text('Login to your account'),
          ),
          body: Padding(
            padding:
                EdgeInsets.only(left: 5.h, right: 5.h, top: 3.h, bottom: 1.h),
            child: SingleChildScrollView(
              clipBehavior: Clip.none,
              child: Column(
                children: [
                  const HeaderWidget(),
                  SizedBox(height: 16.h),
                  const LoginFields(),
                  SizedBox(height: 3.5.h),
                  const SocialNetworkAuth(),
                  SizedBox(height: 1.5.h),
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
                ],
              ),
            ),
          ),
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
      children: [
        SizedBox(height: 3.h),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            'Create your own space in the Cambridge dictionary',
            style: TextStyle(
              fontSize: 4.h,
              color: const Color.fromRGBO(29, 42, 87, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 3.h),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Don't have an Account? "),
              Text(
                " Sign up!",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(29, 42, 87, 1),
                ),
              ),
            ],
          ),
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
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        TextField(
          controller: _email,
          style: const TextStyle(fontWeight: FontWeight.bold),
          enableSuggestions: false,
          autocorrect: false,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            hintText: 'Email',
            isDense: true,
            contentPadding: EdgeInsets.all(1.5.h),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(29, 42, 87, 1),
              ),
            ),
          ),
        ),
        SizedBox(height: 2.h),
        TextField(
          controller: _password,
          style: const TextStyle(fontWeight: FontWeight.bold),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: InputDecoration(
            hintText: 'Password',
            isDense: true,
            contentPadding: EdgeInsets.all(1.5.h),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(29, 42, 87, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SocialNetworkAuth extends StatelessWidget {
  const SocialNetworkAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('OR'),
        SizedBox(height: 1.5.h),
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
