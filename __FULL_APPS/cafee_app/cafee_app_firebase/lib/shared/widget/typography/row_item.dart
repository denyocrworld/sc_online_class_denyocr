import 'package:flutter/widgets.dart';

Widget RowItem({
  String? title,
  String? subtitle,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 6.0,
    ),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "$title",
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
        ),
        Text(
          "$subtitle",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
