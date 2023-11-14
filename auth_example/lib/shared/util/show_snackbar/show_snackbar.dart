import 'package:auth_example/state_util.dart';
import 'package:flutter/material.dart';

snackbarPrimary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.green,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSecondary({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.grey,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarDanger({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.red,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarSuccess({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.green,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarInfo({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.blue,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}

snackbarWarning({required String message, int duration = 4}) {
  var snackBar = SnackBar(
    duration: Duration(seconds: duration),
    backgroundColor: Colors.orange,
    content: Text(
      message,
      style: const TextStyle(
        color: Colors.white,
      ),
    ),
  );
  ScaffoldMessenger.of(globalContext).showSnackBar(snackBar);
}
