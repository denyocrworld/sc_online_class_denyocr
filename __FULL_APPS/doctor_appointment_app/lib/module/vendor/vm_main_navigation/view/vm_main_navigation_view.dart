import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class VmMainNavigationView extends StatefulWidget {
  const VmMainNavigationView({super.key});

  @override
  _VmMainNavigationViewState createState() => _VmMainNavigationViewState();
}

class _VmMainNavigationViewState extends State<VmMainNavigationView>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(VmMainNavigationController());
  late TabController tabController;
  int _index = 0;

  getPage() {
    switch (_index) {
      case 0:
        return VmOrderListView();
      case 1:
        return VmEditVendorView(
          item: AppSession.myVendor,
        );
      case 2:
        return VmProfileView();
    }
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
    _index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VmMainNavigationController>(
      builder: (_) {
        return Scaffold(
          body: getPage(),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            currentIndex: _index,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              setState(() {
                _index = index;
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history,
                ),
                label: "Your Order",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.store_sharp,
                ),
                label: "Your Store's",
              ),
              BottomNavigationBarItem(
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
