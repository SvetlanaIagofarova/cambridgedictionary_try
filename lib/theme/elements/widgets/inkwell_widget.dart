import 'package:cambridgedictionary_try/theme/app_colors.dart';
import 'package:flutter/material.dart';

class InkWellWidget extends StatefulWidget {
  final Widget Function(bool isTapped) builder;
  final Color color;
  final BorderRadius borderRadius;
  final VoidCallback onTap;

  const InkWellWidget(
      {super.key,
      required this.builder,
      required this.color,
      required this.borderRadius,
      required this.onTap});

  @override
  State<InkWellWidget> createState() => _InkWellWidgetState();
}

class _InkWellWidgetState extends State<InkWellWidget> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final color =
        isTapped ? widget.color : AppColors.mainAmber.withOpacity(0.7);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: color,
        highlightColor: color,
        borderRadius: widget.borderRadius,
        onTap: widget.onTap,
        onHighlightChanged: (isTapped) => setState(
          () => this.isTapped = isTapped,
        ),
        child: widget.builder(isTapped),
      ),
    );
  }
}
