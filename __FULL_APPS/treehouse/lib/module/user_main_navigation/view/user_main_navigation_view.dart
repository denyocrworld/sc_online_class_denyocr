import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/user_main_navigation_controller.dart';

class UserMainNavigationView extends StatefulWidget {
  const UserMainNavigationView({Key? key}) : super(key: key);

  Widget build(context, UserMainNavigationController controller) {
    controller.view = this;
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
      UserDashboardView(),
      UserCourseListView(),
      UserCourseFavoriteListView(),
      UserProfileView(),
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
        "icon": Icons.bookmark,
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
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.all(0.0),
          shape: CircularNotchedRectangle(), // Membuat notch
          child: Container(
            height: bottomBarHeight,
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 200),
                  left: (MediaQuery.of(context).size.width / 4) *
                      controller.selectedIndex,
                  bottom: 12,
                  child: Container(
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
                      bool selected = index == controller.selectedIndex;
                      if ((menus.length / 2).floor() == index) {}

                      return Expanded(
                        child: InkWell(
                          onTap: () => controller.updateIndex(index),
                          child: Container(
                            height: bottomBarHeight,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 200),
                                  margin: EdgeInsets.only(
                                    bottom: selected ? 6.0 : 0,
                                  ),
                                  child: AnimatedScale(
                                    duration: Duration(milliseconds: 200),
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

  @override
  State<UserMainNavigationView> createState() => UserMainNavigationController();
}
