// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:shyro_theme/gen/fonts.gen.dart';

import '../font_weight.dart';
import '../md2_tab_indicator.dart';
import 'vpec_colors.dart';

ThemeData vpecUniversalThemeData({required bool isDarkMode}) {
  final ColorModel colors = isDarkMode
      ? ColorModel.vpecDarkThemeColors()
      : ColorModel.vpecLightThemeColors();

  final Color backgroundColor = colors.backgroundColor;
  final Color firstLevelColor = colors.firstLevelColor;
  final Color secondLevelColor = colors.secondLevelColor;
  final Color accentColor = colors.accentColor;
  final Color highContrast = colors.highContrast;
  final Color mediumContrast = colors.mediumContrast;
  final Color lowContrast = colors.lowContrast;
  final Brightness brightness = isDarkMode ? Brightness.dark : Brightness.light;

  return ThemeData(
    tabBarTheme: TabBarTheme(
      labelColor: accentColor,
      unselectedLabelColor: mediumContrast,
      indicator: MD2TabIndicator(accentColor),
      indicatorSize: TabBarIndicatorSize.label,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: secondLevelColor,
      foregroundColor: highContrast,
    ),
    cardTheme: const CardTheme(margin: EdgeInsets.zero),
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    brightness: brightness,
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: accentColor.withOpacity(0.5),
        selectionHandleColor: accentColor),
    primaryColor: secondLevelColor,
    cardColor: firstLevelColor,
    splashColor: accentColor.withOpacity(0.2),
    colorScheme: ColorScheme(
        primary: accentColor,
        primaryVariant: accentColor,
        secondary: accentColor,
        secondaryVariant: accentColor,
        surface: secondLevelColor,
        background: backgroundColor,
        error: Colors.redAccent,
        onPrimary: backgroundColor,
        onSecondary: backgroundColor,
        onSurface: highContrast,
        onBackground: highContrast,
        onError: backgroundColor,
        brightness: brightness),
    dialogBackgroundColor: firstLevelColor,
    textTheme: TextTheme(
      subtitle1: TextStyle(
        fontSize: 15,
        color: mediumContrast,
        fontWeight: medium,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        letterSpacing: 0.15,
        color: highContrast,
        fontWeight: regular,
      ),
      headline1: TextStyle(
        fontSize: 44.8,
        letterSpacing: -1,
        color: highContrast,
        fontFamily: FontFamily.montserrat,
        package: 'shyro_theme',
        fontWeight: regular,
      ),
      headline2: TextStyle(
        fontSize: 37.3,
        letterSpacing: -0.6,
        color: highContrast,
        fontFamily: FontFamily.montserrat,
        package: 'shyro_theme',
        fontWeight: regular,
      ),
      headline3: TextStyle(
        fontSize: 31.1,
        letterSpacing: -0.25,
        color: highContrast,
        fontFamily: FontFamily.montserrat,
        package: 'shyro_theme',
        fontWeight: medium,
      ),
      headline4: TextStyle(
        fontSize: 25.9,
        letterSpacing: 0,
        color: highContrast,
        fontFamily: FontFamily.montserrat,
        package: 'shyro_theme',
        fontWeight: medium,
      ),
      headline5: TextStyle(
        fontSize: 21.6,
        letterSpacing: 0.05,
        color: highContrast,
        fontFamily: FontFamily.montserrat,
        package: 'shyro_theme',
        fontWeight: medium,
      ),
      headline6: TextStyle(
        fontSize: 18,
        letterSpacing: 0.2,
        color: highContrast,
        fontFamily: FontFamily.montserrat,
        package: 'shyro_theme',
        fontWeight: semiBold,
      ),
    ),
    iconTheme: const IconThemeData(
      size: 20.0,
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
      textStyle: const TextStyle(
          fontFamily: FontFamily.montserrat, fontWeight: semiBold),
      shape: const StadiumBorder(),
      primary: accentColor,
    )),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
                fontFamily: FontFamily.montserrat, fontWeight: semiBold),
            shape: const StadiumBorder(),
            side: BorderSide(
              width: 1.5,
              color: accentColor,
            ))),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(
          fontFamily: FontFamily.montserrat, fontWeight: semiBold),
      shape: const StadiumBorder(),
      primary: accentColor,
      onPrimary: backgroundColor,
    )),
    inputDecorationTheme: InputDecorationTheme(
      alignLabelWithHint: true,
      errorStyle: const TextStyle(
          color: Colors.redAccent,
          fontFamily: FontFamily.montserrat,
          fontWeight: semiBold),
      labelStyle: const TextStyle(
          fontFamily: FontFamily.montserrat, fontWeight: semiBold),
      hintStyle: const TextStyle(
          fontFamily: FontFamily.montserrat, fontWeight: semiBold),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.redAccent, width: 1.5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: accentColor, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: accentColor, width: 1.5),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
    ),
    scaffoldBackgroundColor: backgroundColor,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: secondLevelColor,
      foregroundColor: accentColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: accentColor,
      unselectedItemColor: mediumContrast,
      backgroundColor: secondLevelColor,
    ),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: firstLevelColor),
  );
}
