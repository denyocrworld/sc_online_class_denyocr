import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class MainNavigationView extends StatefulWidget {
  final int selectedIndex;
  const MainNavigationView({
    super.key,
    required this.selectedIndex,
  });
  @override
  _MainNavigationViewState createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(MainNavigationController());
  late TabController tabController;
  int index = 0;

  getPage() {
    if (index != 1) {
      //cancel current book
      if (Get.isRegistered<BookController>()) {
        BookController bookController = Get.find();
        bookController.selectedVendor = null;
        bookController.update();
      }
    }
    switch (index) {
      case 0:
        return OrderView();
      case 1:
        return const BookView();
      case 2:
        return ProfileView();
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    index = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      builder: (_) {
        Widget getBottomNavigationBar() {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              height: 80,
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                unselectedItemColor: Colors.white.withOpacity(0.6),
                selectedItemColor: Colors.white,
                showUnselectedLabels: true,
                currentIndex: index,
                type: BottomNavigationBarType.fixed,
                onTap: (int index) {
                  setState(() {
                    this.index = index;
                  });
                },
                items: <BottomNavigationBarItem>[
                  const BottomNavigationBarItem(
                    icon: ImageIcon(
                      NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/5530/5530730.png",
                      ),
                    ),
                    label: "Your Order",
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/3436/3436734.png",
                      ),
                    ),
                    activeIcon: const ImageIcon(
                      NetworkImage(
                        "https://cdn-icons-png.flaticon.com/128/3436/3436734.png",
                      ),
                      size: 32.0,
                    ),
                    label: config.orderButtonText,
                  ),
                  const BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: "Profile",
                  ),
                ],
              ),
            ),
          );
        }

        return Scaffold(
          body: Stack(
            children: [
              SafeArea(
                child: getPage(),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: getBottomNavigationBar(),
              ),
            ],
          ),
        );
      },
    );
  }
}
