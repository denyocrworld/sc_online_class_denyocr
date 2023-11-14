// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final String? hintText;
  final Function(String value) onChanged;
  const SearchField({
    Key? key,
    required this.onChanged,
    this.hintText = "Search",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: Color(0xff313131),
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
              onChanged: (value) => onChanged(value),
            ),
          ),
          SizedBox(width: 8.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Material(
              color: Colors.blueGrey[900],
              child: InkWell(
                onTap: () {
                  // TODO: Add action here
                },
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.tune,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
