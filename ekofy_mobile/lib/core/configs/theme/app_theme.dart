import 'package:ekofy_mobile/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    primaryColor: AppColors.white,
    scaffoldBackgroundColor: AppColors.primaryBackground,
    brightness: Brightness.dark,
    fontFamily: 'BE_Vietnam_Pro',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.deepBlue,
      secondary: AppColors.violet,
      surface: AppColors.darkGrey,
      error: AppColors.error,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.white,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
  );

  static final lightTheme = ThemeData(
    primaryColor: AppColors.deepBlue,
    scaffoldBackgroundColor: AppColors.white,
    brightness: Brightness.light,
    fontFamily: 'BE_Vietnam_Pro',
    colorScheme: const ColorScheme.light(
      primary: AppColors.deepBlue,
      secondary: AppColors.violet,
      surface: AppColors.purpleIshWhite,
      error: AppColors.error,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.deepBlue,
        foregroundColor: AppColors.white,
        textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
      ),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.white,
      foregroundColor: Colors.black,
      elevation: 0,
    ),
  );
}
