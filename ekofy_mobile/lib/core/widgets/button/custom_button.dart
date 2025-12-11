import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double height;
  final double? width;
  final FontWeight? fontWeight;
  final double? fontSize;
  final List<Color> gradientColors;
  final String? assetPath;
  const CustomButton({
    required this.onPressed,
    required this.title,
    required this.height,
    required this.gradientColors,
    this.width,
    this.fontSize,
    this.fontWeight,
    this.assetPath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width ?? double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: gradientColors,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (assetPath != null) ...[
              SvgPicture.asset(assetPath!),
              const SizedBox(width: 12),
            ],
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: fontWeight ?? FontWeight.bold,
                fontSize: fontSize ?? 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
