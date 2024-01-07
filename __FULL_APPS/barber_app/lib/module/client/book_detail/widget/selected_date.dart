import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class SelectedDate extends StatelessWidget {
  const SelectedDate({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedDate = DateFormat("d MMM y").format(Input.get("booking_date"));

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Date",
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        Text(
          selectedDate,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
