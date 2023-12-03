import 'package:flutter/material.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/core.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/state_util.dart';
import '../controller/main_navigation_controller.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  Widget build(context, MainNavigationController controller) {
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
      const DashboardView(),
      const OrderListView(),
      Container(
        color: Colors.blue[100],
      ),
      const ProfileView(),
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
          shape: const CircularNotchedRectangle(), // Membuat notch
          child: SizedBox(
            height: 58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(menus.length, (index) {
                var item = menus[index];
                bool selected = index == controller.selectedIndex;
                if ((menus.length / 2).floor() == index) {}

                return Expanded(
                  child: AnimatedScale(
                    duration: const Duration(milliseconds: 400),
                    scale: selected ? 1.2 : 1.0,
                    child: IconButton(
                      onPressed: () => controller.updateIndex(index),
                      icon: Icon(
                        item["icon"],
                        color: selected
                            ? Theme.of(context).primaryColor
                            : Theme.of(context).primaryColor.withOpacity(0.4),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        floatingActionButton: Container(
          child: FloatingActionButton(
            backgroundColor: Theme.of(context).primaryColor,
            onPressed: () async {
              await Get.to(PosView(
                mainNavigationController: controller,
              ));
            },
            child: const Icon(Icons.point_of_sale),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
