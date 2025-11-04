import 'package:flutter/material.dart';

class AppTheme {
  static ColorScheme get lightColorScheme {
    return ColorScheme.fromSeed(
      seedColor: Colors.lightBlue,
      brightness: Brightness.light,
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: lightColorScheme,
      useMaterial3: true,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.lightBlue,
        elevation: 0,
      ),
    );
  }
}

