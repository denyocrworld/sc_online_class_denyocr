import 'package:flutter/material.dart';
import 'package:login_save_token_dan_user_data/state_util.dart';

showPrimarySnackbar(String message) {
  final snackBar = SnackBar(
    content: Text(message),
  );
  ScaffoldMessenger.of(Get.currentContext).showSnackBar(snackBar);
}
