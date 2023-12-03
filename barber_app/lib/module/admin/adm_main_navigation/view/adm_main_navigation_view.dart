import 'package:barber_app/core.dart';

import 'package:flutter/material.dart';

class AdmMainNavigationView extends StatelessWidget {
  final controller = Get.put(AdmMainNavigationController());

  AdmMainNavigationView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AdmMainNavigationController>(
      builder: (_) {
        double padding = 20.0;
        double gridWidth = ((Get.width - (padding * 2) - 32)) / 4;

        return WillPopScope(
          onWillPop: () {
            return Future.value(false);
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Administrator"),
              leading: null,
              automaticallyImplyLeading: false,
              actions: [
                // InkWell(
                //   onTap: () {
                //     Get.to(NotificationView());
                //   },
                //   child: Padding(
                //     padding: const EdgeInsets.all(12.0),
                //     child: NotificationCount(),
                //   ),
                // ),
                InkWell(
                  onTap: () async {
                    showLoading();
                    await FirebaseAuth.instance.signOut();
                    hideLoading();
                    Get.offAll(LoginView());
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(Icons.logout),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: EdgeInsets.all(padding),
              child: Column(
                children: [
                  // Container(
                  //   child: Row(
                  //     children: [
                  //       Expanded(
                  //         child: Card(
                  //           color: Colors.yellow[900],
                  //           child: Container(
                  //             padding: EdgeInsets.all(12.0),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Text(
                  //                   "100",
                  //                   style: TextStyle(
                  //                     fontSize: 20.0,
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 6.0,
                  //                 ),
                  //                 Text(
                  //                   "Pending ${config.vendorString}",
                  //                   textAlign: TextAlign.center,
                  //                   style: TextStyle(
                  //                     fontSize: 10.0,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(
                  //         width: 4.0,
                  //       ),
                  //       Expanded(
                  //         child: Card(
                  //           color: Colors.blue[900],
                  //           child: Container(
                  //             padding: EdgeInsets.all(12.0),
                  //             child: Column(
                  //               crossAxisAlignment: CrossAxisAlignment.center,
                  //               mainAxisAlignment: MainAxisAlignment.center,
                  //               children: [
                  //                 Text(
                  //                   "124",
                  //                   style: TextStyle(
                  //                     fontSize: 20.0,
                  //                     fontWeight: FontWeight.bold,
                  //                   ),
                  //                 ),
                  //                 SizedBox(
                  //                   width: 6.0,
                  //                 ),
                  //                 Text(
                  //                   "Vendor",
                  //                   textAlign: TextAlign.center,
                  //                   style: TextStyle(
                  //                     fontSize: 10.0,
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        width: Get.width,
                        child: const Text("Administrator Menu"),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(
                            CrudListView(
                              title: "Customers",
                              ref: FirebaseFirestore.instance
                                  .collection(collection.userDataCollection),
                              formFields: const [],
                              itemFields: const [
                                {
                                  "header": "Photo",
                                  "field_name": "profile.photo_url",
                                  "type": "image",
                                  "width": 140,
                                },
                                {
                                  "header": "Display Name",
                                  "field_name": "profile.display_name",
                                  "type": "text",
                                  "expanded": true,
                                },
                              ],
                              rowHeight: 140.0,
                              disableEdit: true,
                              disableAdd: true,
                              disableDelete: true,
                              onItemBuild: (item) {
                                if (item == null) return Container();
                                if (item["profile"] == null) return Container();
                                if (item["profile"]["display_name"] == null ||
                                    item["profile"]["display_name"]
                                        .toString()
                                        .isEmpty ||
                                    item["profile"]["uid"] ==
                                        controller.adminUid) {
                                  return Container();
                                }

                                if (controller.vendorListUids
                                    .contains(item["profile"]["uid"])) {
                                  return Container();
                                }
                              },
                            ),
                          );
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.person),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Customer",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(
                            AdmVendorManagerView(),
                          );
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.verified_user_sharp),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Vendor\nManager",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Get.to(AdmSettingView()),
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.tune),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Setting",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          Get.to(AdmThemeView());
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.color_lens),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Theme",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          showLoading();
                          await AppApi.handleFirstTimeLogin(
                            generateDummy: true,
                          );
                          hideLoading();
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.restore),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Factory\nReset",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          showLoading();
                          await AppApi.handleFirstTimeLogin(
                            generateDummy: false,
                          );
                          hideLoading();
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.restore),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Factory\nReset\n(No Dummy)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        width: Get.width,
                        child: Text("Manage Your ${config.vendorString}"),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(VmOrderListView());
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.list),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Order List",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(ChatView());
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.chat_bubble),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Message(s)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(VmEditVendorFormView());
                        },
                        child: Card(
                          child: SizedBox(
                            width: gridWidth,
                            height: gridWidth,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.store),
                                const SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Edit ${config.vendorString}",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
