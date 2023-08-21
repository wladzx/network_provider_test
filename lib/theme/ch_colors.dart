import 'package:flutter/material.dart';

extension CHColors on Colors {
  static const MaterialColor grey = MaterialColor(
    _greyPrimaryValue,
    <int, Color>{
      50: Color(0xFFF1F1F5),
      100: Color(0xFFE4E6EA),
      200: Color(0xFFC9CDD5),
      300: Color(0xFFAEB5BF),
      400: Color(0xFF939CAA),
      500: Color(_greyPrimaryValue),
      600: Color(0xFF606977),
      700: Color(0xFF484F59),
      800: Color(0xFF30343C),
      900: Color(0xFF181A1E),
    },
  );
  static const int _greyPrimaryValue = 0xFF788395;

  static const MaterialColor primary = MaterialColor(
    _primaryColorValue,
    <int, Color>{
      50: Color(0xFFE5FBFA),
      100: Color(0xFFCCF7F5),
      200: Color(0xFF99EFEB),
      300: Color(0xFF66E7E1),
      400: Color(0xFF33DFD7),
      500: Color(_primaryColorValue),
      600: Color(0xFF00ACA4),
      700: Color(0xFF00817B),
      800: Color(0xFF005652),
      900: Color(0xFF014340),
    },
  );
  static const int _primaryColorValue = 0xFF00D7CD;

  static const MaterialColor secondary = MaterialColor(
    _secondaryColorValue,
    <int, Color>{
      50: Color(0xFFE5F6FF),
      100: Color(0xFFCCEDFF),
      200: Color(0xFF99DCFF),
      300: Color(0xFF66CAFF),
      400: Color(0xFF33B9FF),
      500: Color(_secondaryColorValue),
      600: Color(0xFF0086CC),
      700: Color(0xFF006499),
      800: Color(0xFF004366),
      900: Color(0xFF012E45),
    },
  );
  static const int _secondaryColorValue = 0xFF00A7FF;

  static const MaterialColor red = MaterialColor(
    _red,
    <int, Color>{
      50: Color(0xFFFBE7E7),
      100: Color(0xFFF7D0D0),
      200: Color(0xFFEFA0A0),
      300: Color(0xFFE87171),
      400: Color(0xFFE04141),
      500: Color(_red),
      600: Color(0xFFAD0E0E),
      700: Color(0xFF820B0B),
      800: Color(0xFF560707),
      900: Color(0xFF2B0404),
    },
  );
  static const int _red = 0xFFD81212;

  static const MaterialColor yellow = MaterialColor(
    _yellow,
    <int, Color>{
      50: Color(0xFFFEFAE7),
      100: Color(0xFFFDF6CE),
      200: Color(0xFFFBEC9D),
      300: Color(0xFFF9E36D),
      400: Color(0xFFF7D93C),
      500: Color(_yellow),
      600: Color(0xFFC4A609),
      700: Color(0xFF937D07),
      800: Color(0xFF625304),
      900: Color(0xFF78350F),
    },
  );
  static const int _yellow = 0xFFF5D00B;

  static const MaterialColor green = MaterialColor(
    _green,
    <int, Color>{
      50: Color(0xFFECFDF5),
      100: Color(0xFFD1FAE5),
      200: Color(0xFFA7F3D0),
      300: Color(0xFF6EE7B7),
      400: Color(0xFF34D399),
      500: Color(_green),
      600: Color(0xFF059669),
      700: Color(0xFF047857),
      800: Color(0xFF065F46),
      900: Color(0xFF064E3B),
    },
  );
  static const int _green = 0xFF10B981;

  static const MaterialColor white =
      MaterialColor(0xFFFFFFFF, <int, Color>{});
}
