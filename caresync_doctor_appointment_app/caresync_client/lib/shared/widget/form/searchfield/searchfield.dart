// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  final Function(String value) onSubmitted;
  const SearchField({
    Key? key,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.blueGrey[900],
          ),
          suffixIcon: Container(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.sort,
              color: Colors.blueGrey[900],
            ),
          ),
        ),
        onSubmitted: (value) => onSubmitted(value),
      ),
    );
  }
}
