import 'package:flutter/material.dart';

class AppTheme {
  // Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.yellow[700], // Use yellow as primary brand color
    scaffoldBackgroundColor: Colors.white, // Default white background
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.yellow[700], // AppBar uses yellow
      foregroundColor: Colors.black, // Text/icons on AppBar stay black
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.yellow[700], // FAB uses yellow
      foregroundColor: Colors.black, // Icon inside FAB is black
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow[700], // Button color yellow
        foregroundColor: Colors.black, // Button text color black
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black), // Normal text black
      bodyMedium: TextStyle(color: Colors.black87),
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.black, // Icons in light mode are black
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellow,
      brightness: Brightness.light,
    ).copyWith(
      primary: Colors.yellow[700], // Use yellow as accent
      onPrimary: Colors.black, // Text/icons on yellow stay black
      secondary: Colors.black, // Secondary color for contrasts
    ),
  );

  // Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.yellow[700], // Still yellow for brand identity
    scaffoldBackgroundColor: Colors.black, // Dark background
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black, // AppBar black
      foregroundColor: Colors.yellow[700], // Title/icons in yellow
      elevation: 0,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.yellow[700], // FAB stays yellow
      foregroundColor: Colors.black, // Icon inside stays black
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow[700], // Buttons yellow
        foregroundColor: Colors.black, // Text/icons black
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white), // Normal text white
      bodyMedium: TextStyle(color: Colors.white70),
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black, // Headings in yellow
      ),
    ),
    iconTheme: IconThemeData(
      color: Colors.yellow[700], // Icons in yellow for dark mode
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.yellow,
      brightness: Brightness.dark,
    ).copyWith(
      primary: Colors.yellow[700], // Yellow as accent
      onPrimary: Colors.black,
      secondary: Colors.white, // White as secondary
    ),
  );
}
