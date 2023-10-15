import 'package:dana_ui/shared/theme/theme_constant.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData.light().copyWith(
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
