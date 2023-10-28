// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QExpansionPanel extends StatefulWidget {
  final String title;
  final List<Widget> children;
  final bool expanded;
  const QExpansionPanel({
    Key? key,
    required this.title,
    required this.children,
    this.expanded = false,
  }) : super(key: key);

  @override
  State<QExpansionPanel> createState() => _QExpansionPanelState();
}

class _QExpansionPanelState extends State<QExpansionPanel> {
  bool isExpanded = false;

  @override
  void initState() {
    isExpanded = widget.expanded;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expandedHeaderPadding: EdgeInsets.all(8.0),
      expansionCallback: (int index, bool expanded) {
        print("called! $isExpanded");
        isExpanded = expanded;
        setState(() {});
      },
      children: [
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 6.0,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.children,
            ),
          ),
          isExpanded: isExpanded,
        ),
      ],
    );
  }
}
