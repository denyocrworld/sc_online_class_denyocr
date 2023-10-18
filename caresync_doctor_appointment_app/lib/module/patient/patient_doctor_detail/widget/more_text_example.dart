// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/shared/theme/theme_config.dart';

class MoreTextExample extends StatefulWidget {
  final String text;
  final TextStyle? style;
  const MoreTextExample({
    Key? key,
    required this.text,
    this.style,
  }) : super(key: key);

  @override
  State<MoreTextExample> createState() => _MoreTextExampleState();
}

// state management
//
/*
class AppSession {
  static bool isMember = false;
}
*/

class _MoreTextExampleState extends State<MoreTextExample> {
  bool showAll = false;

  updateState() {
    showAll = !showAll;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => updateState(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            maxLines: showAll ? null : 2,
            overflow: showAll ? null : TextOverflow.ellipsis,
            style: widget.style,
          ),
          SizedBox(
            height: 6.0,
          ),
          if (!showAll)
            Row(
              children: [
                Text(
                  "Selengkapnya",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: primaryColor,
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: primaryColor,
                  size: 16.0,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
