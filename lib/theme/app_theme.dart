
import 'package:flutter/material.dart';

ThemeData buildTheme(Brightness brightness) {
  const espresso = Color(0xFF302019);
  const ivory = Color(0xFFF8EBDD);
  const orange = Color(0xFFA64F2B);
  const olive = Color(0xFF68734B);
  const caramel = Color(0xFFD49A55);

  final dark = brightness == Brightness.dark;

  return ThemeData(
    fontFamily: 'Roboto',
    brightness: brightness,

    scaffoldBackgroundColor:
        dark ? espresso : ivory,

    colorScheme: ColorScheme.fromSeed(
      seedColor: orange,
      brightness: brightness,
      primary: dark ? caramel : orange,
      onPrimary: Colors.white,
      secondary: olive,
      onSecondary: Colors.white,
      surface: dark
          ? const Color(0xFF493329)
          : ivory,
      onSurface: dark ? ivory : espresso,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: dark ? espresso : ivory,
      foregroundColor: dark ? ivory : espresso,
      elevation: 0,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: dark
          ? const Color(0xFF493329)
          : const Color(0xFFEAD7C2),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide.none,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: dark ? caramel : orange,
        foregroundColor: dark ? espresso : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
    ),
  );
}
