import 'package:blog_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static _border([Color color = AppPallete.borderColor]) => OutlineInputBorder(
      borderSide: BorderSide(
        width: 3,
        color: color,
      ),
      borderRadius: BorderRadius.circular(10));

  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(22),
        enabledBorder: _border(),
        focusedBorder: _border(AppPallete.gradient2)),
    appBarTheme: const AppBarTheme(backgroundColor: AppPallete.backgroundColor),
  );
}
