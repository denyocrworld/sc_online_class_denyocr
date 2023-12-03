import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class VendorDetailView extends StatefulWidget {
  final Map<String, dynamic> item;
  final Function(Map<String, dynamic> item) onSelect;

  const VendorDetailView({
    super.key,
    required this.item,
    required this.onSelect,
  });

  @override
  _VendorDetailViewState createState() => _VendorDetailViewState();
}

class _VendorDetailViewState extends State<VendorDetailView>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(VendorDetailController());
  late TabController _tabController;

  Widget getMainView() {
    if (_tabController.index == 0) {
      return AboutView(
        item: widget.item,
      );
    } else if (_tabController.index == 1) {
      return ProductView(
        vendorId: widget.item["id"],
      );
    } else if (_tabController.index == 2) {
      return StaffView(
        vendorId: widget.item["id"],
      );
    } else if (_tabController.index == 3) {
      return GaleryView(
        vendorId: widget.item["id"],
      );
    } else if (_tabController.index == 4) {
      return ReviewView(
        vendorId: widget.item["id"],
      );
    }

    return Container(
      color: Colors.red,
      height: 400.0,
    );
  }

  @override
  void initState() {
    _tabController = TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.view = widget;

    return GetBuilder<VendorDetailController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Vendor Detail"),
            actions: const [],
          ),
          body: controller.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      Header(
                        item: widget.item,
                      ),
                      IconsMenu(
                        item: widget.item,
                      ),
                      TabBar(
                        isScrollable: true,
                        onTap: (index) {
                          print("$index");
                          setState(() {});
                        },
                        tabs: [
                          const Tab(
                            text: 'About',
                          ),
                          Tab(
                            text: config.productString,
                          ),
                          Tab(
                            text: config.staffString,
                          ),
                          const Tab(
                            text: 'Gallery',
                          ),
                          const Tab(
                            text: 'Review',
                          ),
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                      getMainView(),
                    ],
                  ),
                ),
          bottomNavigationBar: Container(
            padding: mediumPadding,
            child: ExButton(
              label: AdminSettingApi.appSetting["multi_vendor"] == false
                  ? "Book"
                  : "Select",
              onPressed: () async {
                if (AppSession.currentUser == null) {
                  Get.snackbar("You Need to Login",
                      "To access this page you need to login");
                  return;
                }

                var item = widget.item;
                showLoading();

                item["products"] = await VendorApi.getProducts(item["id"]);

                hideLoading();

                print("onSelect: ${widget.onSelect}");
                widget.onSelect(item);

                Get.to(
                  const BookVendorSelectedView(),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
