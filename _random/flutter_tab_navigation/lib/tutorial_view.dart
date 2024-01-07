// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TutorialView extends StatefulWidget {
  const TutorialView({Key? key}) : super(key: key);

  @override
  State<TutorialView> createState() => _TutorialViewState();
}

class _TutorialViewState extends State<TutorialView> {
  int selectedIndex = 0;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    /*
    TODO: Implement this @ controller
    int selectedIndex = 0;
    updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
    }
    */

    //Idealnya jumlahnya 4

    List<Widget> pages = [
      Container(
        color: Colors.red[100],
      ),
      Container(
        color: Colors.green[100],
      ),
      Container(
        color: Colors.blue[100],
      ),
      Container(
        color: Colors.purple[100],
      )
    ];
    List<Map<String, dynamic>> menus = [
      {
        "icon": Icons.home,
        "label": "Home",
      },
      {
        "icon": Icons.list,
        "label": "Order",
      },
      {
        "icon": Icons.favorite,
        "label": "Favorite",
      },
      {
        "icon": Icons.person,
        "label": "Profile",
      }
    ];

    double bottomBarHeight = 64;

    return DefaultTabController(
      length: pages.length,
      initialIndex: selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: 0,
          children: pages,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(), // Membuat notch
          child: SizedBox(
            height: bottomBarHeight,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  left: (MediaQuery.of(context).size.width / 4) * selectedIndex,
                  bottom: 12,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.circle,
                            size: 6.0, color: Theme.of(context).primaryColor)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(menus.length, (index) {
                      var item = menus[index];
                      bool selected = index == selectedIndex;
                      if ((menus.length / 2).floor() == index) {}

                      return Expanded(
                        child: InkWell(
                          onTap: () => updateIndex(index),
                          child: SizedBox(
                            height: bottomBarHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  margin: EdgeInsets.only(
                                    bottom: selected ? 6.0 : 0,
                                  ),
                                  child: AnimatedScale(
                                    duration: const Duration(milliseconds: 200),
                                    scale: selected ? 1.2 : 1.0,
                                    child: Icon(
                                      item["icon"],
                                      color: selected
                                          ? Theme.of(context).primaryColor
                                          : Colors.grey[700],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
