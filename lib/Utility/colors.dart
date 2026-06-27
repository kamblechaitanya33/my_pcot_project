import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF6886CE);

  static const Color brand50 = Color(0xFFF3F6FB);
  static const Color brand100 = Color(0xFFE3EAF6);
  static const Color brand200 = Color(0xFFCDDAF0);
  static const Color brand300 = Color(0xFFAAC1E6);
  static const Color brand400 = Color(0xFF82A1D8);
  static const Color brand500 = Color(0xFF6886CE); // Primary
  static const Color brand600 = Color(0xFF516ABF);
  static const Color brand700 = Color(0xFF4659AF);
  static const Color brand800 = Color(0xFF3E4A8F);
  static const Color brand900 = Color(0xFF364072);
  static const Color brand950 = Color(0xFF242947);

  static const MaterialColor brandMaterial =
      MaterialColor(0xFF6886CE, <int, Color>{
        50: brand50,
        100: brand100,
        200: brand200,
        300: brand300,
        400: brand400,
        500: brand500,
        600: brand600,
        700: brand700,
        800: brand800,
        900: brand900,
      });

  static const Color backgroundLight = Color(0xFFF8F9FA);
  static const Color backgroundDark = brand950;

  static const Color textPrimaryLight = brand950;
  static const Color textPrimaryDark = brand50;
}