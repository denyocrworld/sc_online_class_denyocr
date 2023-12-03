import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

showSnackbar({
  String title = "Info",
  String message = "",
  IconData icon = Icons.info,
  Color? backgroundColor,
}) {
  Get.snackbar(
    title,
    message,
    backgroundColor: backgroundColor,
    colorText: Colors.white,
    icon: Icon(icon),
  );
}
