import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class EditTextDialog extends StatelessWidget {
  final String id;
  final String label;
  final String value;

  const EditTextDialog({super.key, 
    required this.id,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(label),
      ),
      body: Container(
        padding: normalPadding,
        child: Column(
          children: [
            ExTextArea(
              id: id,
              label: label,
              value: value,
            ),
          ],
        ),
      ),
    );
  }
}
