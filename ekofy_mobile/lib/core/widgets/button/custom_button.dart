import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double height;
  final List<Color> gradientColors;
  final String? assetPath;
  const CustomButton(
    {
      required this.onPressed,
      required this.title,
      required this.height,
      required this.gradientColors,
      this.assetPath,
      super.key
    }
  );
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
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
          children:[ 
            if(assetPath != null) ...[
              SvgPicture.asset(
                assetPath!
              ),
              const SizedBox(width: 12)
            ],
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}