import 'package:flutter/material.dart';
import 'package:shyro_theme/src/vpec/vpec_universal_theme.dart';

class VPECThemes {
  static ThemeData lightTheme() {
    return vpecUniversalThemeData(isDarkMode: false);
  }

  static ThemeData darkTheme() {
    return vpecUniversalThemeData(isDarkMode: true);
  }
}
