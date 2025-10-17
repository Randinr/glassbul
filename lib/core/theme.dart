import 'package:flutter/material.dart';

/// Tema utama aplikasi — Dark dan Light mode
final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF121212),
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFF2196F3),
    secondary: Color(0xFF03A9F4),
  ),
  appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF1F1F1F)),
  drawerTheme: const DrawerThemeData(backgroundColor: Color(0xFF1E1E1E)),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white70),
  ),
);
