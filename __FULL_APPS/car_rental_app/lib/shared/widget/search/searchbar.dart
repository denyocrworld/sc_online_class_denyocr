import 'package:flutter/material.dart';

class ExSearchBar extends StatefulWidget {
  final String id;
  final Function(String value) onSubmitted;
  final Function? onFilterClick;

  const ExSearchBar({super.key, 
    required this.id,
    required this.onSubmitted,
    this.onFilterClick,
  });
  @override
  ExSearchBarState createState() => ExSearchBarState();
}

class ExSearchBarState extends State<ExSearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
      ),
      child: TextField(
        onSubmitted: (text) {
          widget.onSubmitted(text);
        },
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search",
          prefixIcon: const Icon(
            Icons.search,
            size: 24,
            color: Colors.grey,
          ),
          suffixIcon: InkWell(
            onTap: () {
              if (widget.onFilterClick != null) {
                widget.onFilterClick!();
              }
            },
            child: const Icon(
              Icons.tune_outlined,
              size: 24,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
