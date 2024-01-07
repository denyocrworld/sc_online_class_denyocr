import 'package:flutter/material.dart';
import 'package:doctor_appointment_app/core.dart';

var defaultTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Colors.grey[100],
  cardTheme: CardTheme(
    elevation: 0.6,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16.0),
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.grey[800],
  ),
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      color: Colors.grey[800],
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
    iconTheme: IconThemeData(
      color: Colors.grey[800],
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    displayLarge: TextStyle(
      color: Colors.grey[800],
    ),
    displayMedium: TextStyle(
      color: Colors.grey[800],
    ),
    bodyLarge: TextStyle(
      color: Colors.grey[800],
    ),
    bodyMedium: TextStyle(
      color: Colors.grey[800],
    ),
  ),
);
