import 'package:flutter/material.dart';

class AppStatusStyle {
  final String label;
  final Color bg;
  final Color text;
  final Color border;

  const AppStatusStyle({
    required this.label,
    required this.bg,
    required this.text,
    required this.border,
  });
}

class AppStatusBadge extends StatelessWidget {
  final AppStatusStyle style;
  final EdgeInsets padding;
  final double fontSize;

  const AppStatusBadge({
    super.key,
    required this.style,
    this.padding = const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    this.fontSize = 11,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: style.bg,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: style.border, width: 0.6),
      ),
      child: Text(
        style.label,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
          color: style.text,
        ),
      ),
    );
  }
}
