import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

var primaryColor = Colors.grey[800];
var secondaryColor = const Color(0xFF2A2D3E);
var bgColor = const Color(0xFF212332);
var defaultPadding = 16.0;

var dangerColor = Colors.red[300];
var successColor = Colors.green[300];
var infoColor = Colors.blue[300];
var warningColor = Colors.orange[300];
var disabledColor = Colors.grey[300];

//--------------------------
//--------------------------

Color get mainColor {
  return Get.theme.primaryColor;
}

Color get backgroundColor {
  return Get.theme.scaffoldBackgroundColor;
}

Color get textColor {
  return Get.theme.textTheme.bodyLarge!.color!;
}

Color get inactiveColor {
  return Get.theme.textTheme.bodyMedium!.color!;
}

//Radius
double smallCircularRadius = 8.0;
double mediumCircularRadius = 16.0;
double largeCircularRadius = 32.0;

BorderRadiusGeometry get smallRadius {
  return BorderRadius.all(Radius.circular(smallCircularRadius));
}

BorderRadiusGeometry get mediumRadius {
  return BorderRadius.all(Radius.circular(mediumCircularRadius));
}

BorderRadiusGeometry get largeRadius {
  return BorderRadius.all(Radius.circular(largeCircularRadius));
}

//Height
double get smallHeight {
  return 48;
}

double get mediumHeight {
  return 52;
}

double get largeHeight {
  return 56;
}

//Shadow
normalShadow(Color color) {
  return [
    BoxShadow(
      color: color.withOpacity(0.4),
      blurRadius: 6.0,
      spreadRadius: 4,
    ),
  ];
}

//Padding
EdgeInsetsGeometry get normalPadding {
  return const EdgeInsets.all(10.0);
}

EdgeInsetsGeometry get mediumPadding {
  return const EdgeInsets.all(16.0);
}

EdgeInsetsGeometry get largePadding {
  return const EdgeInsets.all(20.0);
}

//Border
BoxBorder get defaultBorder {
  return Border.all(
    width: 1.0,
    color: Colors.grey[300]!,
  );
}

TextStyle get fontFamily {
  return GoogleFonts.montserrat();
}
