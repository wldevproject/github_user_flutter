import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.white,
      ),
      useMaterial3: true,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'Poppins',
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.black,
      splashColor: Colors.transparent,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.black),
    );
  }
}