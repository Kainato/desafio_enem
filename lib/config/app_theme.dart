import 'package:flutter/material.dart';

class AppTheme {
  BuildContext context;
  AppTheme(this.context);

  static ThemeData light = ThemeData(
    useMaterial3: false,
    iconTheme: const IconThemeData(color: Colors.black),
    cardTheme: CardTheme(
      color: Colors.white,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.blue),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      // Primary Color
      primary: Colors.blue,
      onPrimary: Colors.white,
      // Error Color
      error: Colors.red,
      onError: Colors.white,
      // Background Color
      surface: Colors.white,
      onSurface: Colors.black,
      // Widget Color
      onSurfaceVariant: Colors.grey,
      surfaceContainerHighest: Colors.white,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
      extendedTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: false,
    iconTheme: const IconThemeData(color: Colors.white),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF121212),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    cardTheme: CardTheme(
      color:
          const Color(0xFF1E1E1E), //Surface with 1dp elevation surface overlay
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: const Color(0xFF9dc3f9), // primary
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Color(0xFF9dc3f9)),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      // Primary Color
      primary: Color(0xFF9dc3f9),
      onPrimary: Colors.black,
      // Error Color
      error: Color(0xFFcf6679),
      onError: Colors.black,
      // Background Color
      surface: Color(0xFF121212),
      onSurface: Colors.white,
      // Widget Color
      onSurfaceVariant: Color(0xFF8a8a8a),
      surfaceContainerHighest: Color(0xFF282828),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color(0xFF9dc3f9), // primary
      extendedTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );

  Color get backgroundLogo {
    return Theme.of(context).brightness == Brightness.dark
        ? dark.colorScheme.inverseSurface
        : light.colorScheme.primary;
  }
}
