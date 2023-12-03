import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class SelectedTime extends StatelessWidget {
  const SelectedTime({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedTime = Input.get("time");

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Time",
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          "$selectedTime",
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
