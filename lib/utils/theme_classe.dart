import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThemeClass {
  Color lightPrimaryColor = HexColor('#FFFFFF');
  Color darkPrimaryColor = HexColor('#000000');
  Color secondaryColor = HexColor('#FF8B6A');
  Color accentColor = HexColor('#FFD2BB');

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    popupMenuTheme: PopupMenuThemeData(
      color: Colors.white,
    ),
    chipTheme: ChipThemeData(
      selectedColor: Colors.teal.shade100.withOpacity(0.3),
      labelStyle: const TextStyle(
        color: Colors.black,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      indicatorColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
    ),
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
        primary: _themeClass.lightPrimaryColor,
        secondary: _themeClass.secondaryColor),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    cardColor: Colors.white,
    cardTheme: CardTheme(
      color: Colors.white,
    ),
    chipTheme: ChipThemeData(
      selectedColor: Colors.teal.shade100.withOpacity(0.3),
      labelStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.white,
      indicatorColor: Colors.blue,
      unselectedLabelColor: Colors.grey,
    ),
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkPrimaryColor,
    ),
  );
}

ThemeClass _themeClass = ThemeClass();
