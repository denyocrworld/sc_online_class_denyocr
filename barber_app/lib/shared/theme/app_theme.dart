import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

List selectedColorSet = [];

extension CustomThemeData on ThemeData {
  ThemeData getCustomTheme({
    List<int>? customColorSet,
  }) {
    List<Color> colorSet = [];
    if (customColorSet != null) {
      for (var colorInt in customColorSet) {
        colorSet.add(Color(colorInt));
      }
    } else {
      for (var colorInt in colorPalettes[7]) {
        colorSet.add(Color(colorInt));
      }
    }

    selectedColorSet = colorSet;

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: colorSet[0]),
    );

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colorSet[1],
      appBarTheme: AppBarTheme(backgroundColor: colorSet[0]),
      cardColor: colorSet[0],
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorSet[3],
        selectedItemColor: colorSet[4],
        unselectedItemColor: colorSet[5],
      ),
      primaryColor: colorSet[0],
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorSet[2],
        ),
      ),
    );
  }
}
