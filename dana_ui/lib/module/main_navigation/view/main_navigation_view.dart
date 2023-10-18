import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
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
    return DefaultTabController(
      length: 5,
      initialIndex: controller.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: controller.selectedIndex,
          children: [
            const DashboardView(),
            const TransactionHistoryView(),
            Container(
              color: Colors.green,
            ),
            const WalletView(),
            const ProfileView(),
          ],
        ),
        floatingActionButton: Transform.translate(
          offset: const Offset(0, 10),
          child: Transform.scale(
            scale: 1.2,
            child: FloatingActionButton(
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code,
                    size: 32.0,
                  ),
                  Text(
                    "Pay",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.selectedIndex,
          onTap: (newIndex) => controller.updateIndex(newIndex),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.wallet,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.listBox,
              ),
              label: "History",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.history,
                color: Colors.transparent,
              ),
              label: "",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: "Wallet",
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin_circle,
              ),
              label: "Me",
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<MainNavigationView> createState() => MainNavigationController();
}
