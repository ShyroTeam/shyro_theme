import 'package:flutter/material.dart';

class ColorModel {
  final Color backgroundColor;
  final Color firstLevelColor;
  final Color secondLevelColor;
  final Color accentColor;
  final Color highContrast;
  final Color mediumContrast;
  final Color lowContrast;

  ColorModel({
    required this.backgroundColor,
    required this.firstLevelColor,
    required this.secondLevelColor,
    required this.accentColor,
    required this.highContrast,
    required this.mediumContrast,
    required this.lowContrast,
  });

  static ColorModel vpecLightThemeColors() {
    return ColorModel(
        backgroundColor: const Color(0xFFE8E8E8),
        firstLevelColor: const Color(0xFFF5F5F5),
        secondLevelColor: const Color(0xFFFFFFFF),
        accentColor: const Color(0xFF133676),
        highContrast: Colors.black87,
        mediumContrast: const Color(0x99000000),
        lowContrast: Colors.black38);
  }

  static ColorModel vpecDarkThemeColors() {
    return ColorModel(
        backgroundColor: const Color(0xFF121212),
        firstLevelColor: const Color(0xFF1F1F1F),
        secondLevelColor: const Color(0xFF292929),
        accentColor: const Color(0xFF7B9DDB),
        highContrast: const Color(0xDEFFFFFF),
        mediumContrast: Colors.white60,
        lowContrast: const Color(0x61FFFFFF));
  }
}


