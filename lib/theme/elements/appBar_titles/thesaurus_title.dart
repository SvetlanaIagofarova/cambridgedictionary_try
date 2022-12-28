import 'package:cambridgedictionary_try/theme/elements/buttons/profile_button.dart';
import 'package:flutter/material.dart';

class ThesaurusTitle extends StatefulWidget {
  const ThesaurusTitle({super.key});

  @override
  State<ThesaurusTitle> createState() => _ThesaurusTitleState();
}

class _ThesaurusTitleState extends State<ThesaurusTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text('Thesaurus'),
        ProfileButton(),
      ],
    );
  }
}
