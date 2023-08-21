import 'package:flutter/material.dart';

import 'ch_colors.dart';

extension CHThemeData on ThemeData {
  static ThemeData get defaultTheme {
    const String fontFamily = 'Montserrat';
    final Color defaultTextColor = CHColors.grey.shade900;
    return ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: TextTheme(
        // Body 1
        bodyLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 18,
          letterSpacing: 0.36,
          color: defaultTextColor,
          height: 1.11,
          fontWeight: FontWeight.w400,
        ),
        // Body 2
        bodyMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          letterSpacing: 0.36,
          color: defaultTextColor,
          height: 1.5,
          fontWeight: FontWeight.w400,
        ),
        // Body 3
        bodySmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: 12,
          letterSpacing: 0.24,
          color: defaultTextColor,
          height: 1.33,
          fontWeight: FontWeight.w400,
        ),
        // Subtitle
        titleLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 24,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1.67,
          fontWeight: FontWeight.w400,
        ),
        // Button 1
        titleMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 16,
          letterSpacing: 0.32,
          color: defaultTextColor,
          height: 1,
          fontWeight: FontWeight.w500,
        ),
        // Button 2
        titleSmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: 14,
          letterSpacing: 0.28,
          color: defaultTextColor,
          height: 1.33,
          fontWeight: FontWeight.w600,
        ),
        //Overline
        displayLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 12,
          letterSpacing: 0.24,
          color: defaultTextColor,
          height: 1.14,
          fontWeight: FontWeight.w600,
        ),
        // Heading 1
        headlineLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 72,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1,
          fontWeight: FontWeight.bold,
        ),
        // Heading 2
        headlineMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 56,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1,
          fontWeight: FontWeight.bold,
        ),
        // Heading 3
        labelLarge: TextStyle(
          fontFamily: fontFamily,
          fontSize: 40,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1,
          fontWeight: FontWeight.w600,
        ),
        // Heading 4
        labelMedium: TextStyle(
          fontFamily: fontFamily,
          fontSize: 32,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1.125,
          fontWeight: FontWeight.w600,
        ),
        // Heading 5
        labelSmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: 24,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1,
          fontWeight: FontWeight.w600,
        ),
        // Heading 6
        displaySmall: TextStyle(
          fontFamily: fontFamily,
          fontSize: 20.0,
          letterSpacing: 0,
          color: defaultTextColor,
          height: 1.2,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
