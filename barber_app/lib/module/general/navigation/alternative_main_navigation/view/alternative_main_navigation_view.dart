import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class AlternativeMainNavigationView extends StatefulWidget {
  const AlternativeMainNavigationView({super.key});

  @override
  _AlternativeMainNavigationViewState createState() =>
      _AlternativeMainNavigationViewState();
}

class _AlternativeMainNavigationViewState
    extends State<AlternativeMainNavigationView>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(AlternativeMainNavigationController());
  late TabController tabController;
  int index = 0;

  getPage() {
    switch (index) {
      case 0:
        return const Center(
          child: Text("To access this page you need to login"),
        );
      case 1:
        return const BookView();
      case 2:
        return const Center(
          child: Text("To access this page you need to login"),
        );
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 3,
      vsync: this,
    );
    index = 1;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AlternativeMainNavigationController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Stack(
              children: [
                getPage(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                    top: 4.0,
                  ),
                  child: Card(
                    elevation: 4.0,
                    color: primaryColor,
                    child: Container(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const Text(
                            "Login to make an Order",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const Spacer(),
                          ExButton(
                            height: 30.0,
                            fontSize: 12.0,
                            label: "Login",
                            onPressed: () => Get.to(LoginView()),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
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
                icon: Icon(
                  Icons.history,
                ),
                label: "Your Order",
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.book_online,
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
        );
      },
    );
  }
}
