// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CustomTabNavigation extends StatefulWidget {
  final List<String> headers;
  final List<Widget> children;
  const CustomTabNavigation({
    Key? key,
    required this.headers,
    required this.children,
  }) : super(key: key);

  @override
  State<CustomTabNavigation> createState() => _CustomTabNavigationState();
}

class _CustomTabNavigationState extends State<CustomTabNavigation> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
<<<<<<< HEAD
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.antiAlias,
            child: Row(
                children: List.generate(widget.headers.length, (index) {
              var header = widget.headers[index];
              bool selected = selectedIndex == index;

              if (selected)
                return InkWell(
                  onTap: () => updateIndex(index),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          4.0,
                        ),
                        topRight: Radius.circular(
                          4.0,
                        ),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey[300]!,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "$header",
                        style: TextStyle(
                          color: infoColor,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
                );

=======
          child: Row(
              children: List.generate(widget.headers.length, (index) {
            var header = widget.headers[index];
            bool selected = selectedIndex == index;

            if (selected)
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
              return InkWell(
                onTap: () => updateIndex(index),
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
<<<<<<< HEAD
                    color: Color(0xfff3f3f3),
=======
                    color: Colors.white,
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        4.0,
                      ),
                      topRight: Radius.circular(
                        4.0,
                      ),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[300]!,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "$header",
                      style: TextStyle(
<<<<<<< HEAD
                        color: Colors.grey,
=======
                        color: infoColor,
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
              );
<<<<<<< HEAD
            })),
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: selectedIndex,
            children: widget.children,
          ),
        ),
=======

            return InkWell(
              onTap: () => updateIndex(index),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Color(0xfff3f3f3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      4.0,
                    ),
                    topRight: Radius.circular(
                      4.0,
                    ),
                  ),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.grey[300]!,
                  ),
                ),
                child: Center(
                  child: Text(
                    "$header",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            );
          })),
        ),
        widget.children[selectedIndex],
>>>>>>> 029e828ba1fa19a5c181eaeabecf7dd320d61870
      ],
    );
  }
}
