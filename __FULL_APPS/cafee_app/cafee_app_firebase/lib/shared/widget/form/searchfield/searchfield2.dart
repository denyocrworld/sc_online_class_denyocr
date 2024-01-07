// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class QSearchField2 extends StatefulWidget {
  final String? hintText;
  final Function(String value) onChanged;
  final Function(FocusNode focusNode)? onFocus;
  final bool requestFocusOnReady;
  const QSearchField2({
    Key? key,
    required this.onChanged,
    this.onFocus,
    this.hintText = "Search",
    this.requestFocusOnReady = false,
  }) : super(key: key);

  @override
  State<QSearchField2> createState() => _QSearchField2State();
}

class _QSearchField2State extends State<QSearchField2> {
  FocusNode focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(() {
      if (focusNode.hasFocus && widget.onFocus != null) {
        widget.onFocus!(focusNode);
      }
    });
    //Event yang dipanggil ketika sudah menyelesaikan fase build() 1x
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
    super.initState();
  }

  onReady() {
    if (widget.requestFocusOnReady) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(16.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.grey,
          ),
          Expanded(
            child: TextField(
              focusNode: focusNode,
              style: TextStyle(
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
                fillColor: Colors.transparent,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
              onChanged: (value) => widget.onChanged(value),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Material(
              color: secondaryColor,
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
