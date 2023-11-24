import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';
import 'package:flutter/material.dart';

ThemeData getDefaultTheme() {
  return ThemeData().copyWith(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.grey[300],
    colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff0450bd),
      elevation: 0.6,
      titleTextStyle: GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.grey,
      selectedItemColor: infoColor,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.grey,
      labelColor: Colors.blueGrey[900]!,
    ),
    textTheme: TextTheme(
      titleSmall: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      titleMedium: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      titleLarge: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      bodyLarge: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      bodySmall: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
      bodyMedium: GoogleFonts.lato(
        color: Colors.blueGrey[900],
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      hoverColor: Colors.transparent,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.red,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: Colors.grey[300]!,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      filled: true,
      fillColor: Color(0xfffbfbfb),
    ),
  );
}
