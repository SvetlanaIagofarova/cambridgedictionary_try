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
                  SizedBox(height: 14.5.h),
                  const SocialNetworkAuth(),
                  const LoginFields(),
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

class SocialNetworkAuth extends StatelessWidget {
  const SocialNetworkAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        SizedBox(height: 1.h),
        const Text('OR')
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
  String? errorText;

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

  void _auth() {
    final email = _email.text;
    final password = _password.text;

    if (email == 'foo' && password == 'foo') {
      errorText = null;
      print('open app');
    } else {
      errorText = 'Wrong credentials';
    }
    setState(() {});
  }

  void _forgotPassword() {
    print('forgot password');
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              color: Colors.red,
              fontSize: 2.h,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
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
        TextButton(
          onPressed: _forgotPassword,
          child: const Text(
            'Forgot password?',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Color.fromRGBO(29, 42, 87, 1),
            ),
          ),
        ),
        SizedBox(height: 1.5.h),
        MyGradientButton(
          onPressed: _auth,
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
    );
  }
}
