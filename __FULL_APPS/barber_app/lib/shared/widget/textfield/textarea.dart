import 'package:flutter/material.dart';
import 'package:barber_app/core.dart';

class ExTextArea extends StatelessWidget {
  final String id;
  final String label;
  final int maxLines;
  final String? value;

  const ExTextArea({super.key, 
    required this.id,
    required this.label,
    this.maxLines = 4,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ExTextField(
      id: id,
      label: label,
      maxLines: maxLines,
      value: value,
    );
  }
}
