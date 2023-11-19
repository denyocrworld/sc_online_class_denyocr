import 'package:flutter/material.dart';

class XCard extends StatelessWidget {
  final String? title;
  final List<Widget> children;
  final List<Widget> actions;
  final bool enableScroll;

  const XCard({super.key, 
    this.title,
    this.children = const [],
    this.actions = const [],
    this.enableScroll = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70.0,
            padding: const EdgeInsets.only(
              right: 20.0,
              left: 20.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "$title",
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const Spacer(),
                ...actions,
              ],
            ),
          ),
          Container(
            height: 1.0,
            color: const Color(0xffD8DBE0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          if (!enableScroll)
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  children: [
                    ...children,
                  ],
                ),
              ),
            ),
          if (enableScroll)
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    children: [
                      ...children,
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
