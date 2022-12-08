import 'package:flutter/material.dart';

class MyGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final ButtonStyle? style;
  final Gradient? gradient;

  const MyGradientButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.style,
    this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    final styleButton = ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
    );

    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 0.5,
              offset: Offset(5, 5),
            )
          ],
          gradient: gradient),
      child: TextButton(
        onPressed: onPressed,
        style: styleButton,
        child: child,
      ),
    );
  }
}
