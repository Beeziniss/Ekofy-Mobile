import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    primaryColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.primaryBackground,
    brightness: Brightness.dark,
    fontFamily: 'BE_Vietnam_Pro',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8)
        )

      )
    )
  );
}