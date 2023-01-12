import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:cambridgedictionary_try/tools/custom_icons.dart';

class ExchangeButton extends StatefulWidget {
  final VoidCallback onTap;

  const ExchangeButton({
    super.key,
    required this.onTap,
  });

  @override
  State<ExchangeButton> createState() => _ExchangeButtonState();
}

class _ExchangeButtonState extends State<ExchangeButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.all(1.0.h),
      constraints: const BoxConstraints(),
      splashRadius: 3.0.h,
      splashColor: AppColors.mainAmber.withOpacity(0.7),
      icon: const Icon(
        color: Colors.red,
        CustomIcons.exchange,
      ),
      iconSize: 2.0.h,
      onPressed: widget.onTap,
    );
  }
}
