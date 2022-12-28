import 'package:cambridgedictionary_try/theme/elements/buttons/profile_button.dart';
import 'package:flutter/material.dart';

class GrammarTitle extends StatefulWidget {
  const GrammarTitle({super.key});

  @override
  State<GrammarTitle> createState() => _GrammarTitleState();
}

class _GrammarTitleState extends State<GrammarTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Grammar'),
        ProfileButton(),
      ],
    );
  }
}
