import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String label;
  final String value;
  final TextStyle valueStyle;

  const ListItem({super.key, 
    required this.label,
    required this.value,
    this.valueStyle = const TextStyle(
      fontSize: 12.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12.0,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.only(
            left: 4.0,
            right: 4.0,
          ),
          margin: const EdgeInsets.only(
            top: 6.0,
            bottom: 6.0,
          ),
          child: Text(
            value,
            style: valueStyle,
          ),
        ),
      ],
    );
  }
}
