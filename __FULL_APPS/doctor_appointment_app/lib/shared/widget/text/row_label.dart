import 'package:flutter/material.dart';

class RowLabel extends StatelessWidget {
  final String label;
  final String sublabel;
  final Function? onSublabelClick;

  const RowLabel({
    super.key,
    required this.label,
    required this.sublabel,
    this.onSublabelClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.0,
        bottom: 12.0,
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (onSublabelClick != null) onSublabelClick!();
            },
            child: Text(
              sublabel,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
