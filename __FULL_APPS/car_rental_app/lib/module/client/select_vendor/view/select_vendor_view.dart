import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SelectVendorView extends StatelessWidget {
  final Function(Map<String, dynamic> item) onSelect;
  SelectVendorView({
    super.key,
    required this.onSelect,
  });

  final controller = Get.put(SelectVendorController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<SelectVendorController>(
      builder: (_) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Get.height / 4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        config.searchCoverBackground,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      /*
                      Center(
                        child: SizedBox(
                          width: Get.width / 1.2,
                          child: ExTextField(
                            id: "search",
                            label: "",
                            hintText: "Search ${config.vendorString}",
                            onSubmitted: (text) {
                              controller.search = text;
                              controller.update();
                            },
                          ),
                        ),
                      ),
                      */
                      Positioned(
                        right: 36,
                        left: 36,
                        bottom: 20,
                        child: Container(
                          height: 46,
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[900]!.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 5.0,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                size: 24.0,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              Expanded(
                                child: TextField(
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  decoration: const InputDecoration.collapsed(
                                    hintText: "Search",
                                  ),
                                  onSubmitted: (value) {
                                    controller.search = value;
                                    controller.update();
                                  },
                                ),
                              ),
                              const SizedBox(
                                width: 6.0,
                              ),
                              const Icon(
                                Icons.tune,
                                size: 24.0,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 20.0,
                        bottom: 10.0,
                        child: Row(
                          children: [
                            if (config.fieldConfig["gender"]["enabled"] == true)
                              InkWell(
                                onTap: () {
                                  controller.updateGenderFilter();
                                },
                                child: Row(
                                  children: [
                                    ...[
                                      if (controller.genderFilter == "All" ||
                                          controller.genderFilter == "Male")
                                        Image.network(
                                          "https://i.ibb.co/7g0d0L6/male.png",
                                          width: 20.0,
                                        ),
                                      if (controller.genderFilter == "All" ||
                                          controller.genderFilter == "Female")
                                        Image.network(
                                          "https://i.ibb.co/HnbvyJ0/female.png",
                                          width: 20.0,
                                        ),
                                    ],
                                  ],
                                ),
                              ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            // ExButton(
                            //   label: "Rating",
                            //   color: controller.orderBy ==
                            //           SelectVendorOrderType.rating
                            //       ? primaryColor
                            //       : secondaryColor,
                            //   icon: Icons.sort,
                            //   height: 28.0,
                            //   fontSize: 8.0,
                            //   onPressed: () {
                            //     controller.orderBy =
                            //         SelectVendorOrderType.rating;
                            //     controller.update();
                            //   },
                            // ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            // ExButton(
                            //   label: "Nearby",
                            //   color: controller.orderBy ==
                            //           SelectVendorOrderType.nearbyLocation
                            //       ? primaryColor
                            //       : secondaryColor,
                            //   icon: Icons.sort,
                            //   height: 28.0,
                            //   fontSize: 8.0,
                            //   onPressed: () {
                            //     controller.orderBy =
                            //         SelectVendorOrderType.nearbyLocation;
                            //     controller.update();
                            //   },
                            // ),
                            // SizedBox(
                            //   width: 10.0,
                            // ),
                            // ExButton(
                            //   width: 50.0,
                            //   label: "",
                            //   color: controller.orderBy ==
                            //           SelectVendorOrderType.nearbyLocation
                            //       ? primaryColor
                            //       : theme.secondary,
                            //   icon: Icons.tune,
                            //   iconSize: 10.0,
                            //   height: 28.0,
                            //   fontSize: 8.0,
                            //   onPressed: () {
                            //     controller.orderBy =
                            //         SelectVendorOrderType.nearbyLocation;
                            //     controller.update();
                            //   },
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                const UpcomingOrder(),
                FireStream(
                  stream: FirebaseFirestore.instance
                      .collection(collection.vendorCollection)
                      .where("status", isEqualTo: "Approved")
                      .orderBy("rate", descending: true)
                      .snapshots(
                        includeMetadataChanges: true,
                      ),
                  onSnapshot: (querySnapshot) {
                    if (controller.currentUserPosition == null) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    var items = [];
                    for (var i = 0; i < querySnapshot.size; i++) {
                      var item =
                          querySnapshot.docs[i].data() as Map<String, dynamic>;
                      item["id"] = querySnapshot.docs[i].id;

                      var lat = item["latitude"];
                      var lng = item["longitude"];

                      double distanceInMeters = Geolocator.distanceBetween(
                        controller.currentUserPosition!.latitude,
                        controller.currentUserPosition!.longitude,
                        lat,
                        lng,
                      );

                      item["distance"] = distanceInMeters;
                      items.add(item);
                    }

                    //Sort By Nearby Vendor
                    if (controller.orderBy ==
                        SelectVendorOrderType.nearbyLocation) {
                      items.sort(
                          (a, b) => a["distance"].compareTo(b["distance"]));
                    }

                    return Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];

                          if (!item["vendor_name"]
                              .toString()
                              .toLowerCase()
                              .contains(controller.search.toLowerCase())) {
                            return Container();
                          }

                          return SelectVendorDetailView(
                            item: item,
                            onSelect: onSelect,
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
