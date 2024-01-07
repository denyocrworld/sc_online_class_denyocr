import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/dashboard/view/dashboard_view.dart';
import '../controller/main_navigation_controller.dart';
import '../state/main_navigation_state.dart';
import 'package:get_it/get_it.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  MainNavigationController controller = MainNavigationController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<MainNavigationController>()) {
      GetIt.I.unregister<MainNavigationController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<MainNavigationController, MainNavigationState>(
        listener: (context, state) {},
        child: BlocBuilder<MainNavigationController, MainNavigationState>(
          builder: (context, state) {
            final bloc = context.read<MainNavigationController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    MainNavigationController controller,
    MainNavigationState state,
  ) {
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
      DashboardView(),
      Container(
        color: Colors.green[100],
      ),
      Container(
        color: Colors.blue[100],
      ),
      ProfileView(),
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
      initialIndex: state.selectedIndex,
      child: Scaffold(
        body: IndexedStack(
          index: state.selectedIndex,
          children: pages,
        ),
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.all(0.0),
          shape: CircularNotchedRectangle(), // Membuat notch
          child: Container(
            height: 58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(menus.length, (index) {
                var item = menus[index];
                bool selected = index == state.selectedIndex;
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
            onPressed: () => Get.to(PosView()),
            child: Icon(Icons.point_of_sale),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
