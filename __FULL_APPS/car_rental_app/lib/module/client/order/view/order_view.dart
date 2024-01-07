import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';


class OrderView extends StatelessWidget {
  final controller = Get.put(OrderController());

  OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<OrderController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Order List"),
            actions: [
              InkWell(
                onTap: () {
                  Get.to(ChatView());
                },
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 20.0,
                    right: 20.0,
                    bottom: 20.0,
                  ),
                  child: VmChatCount(),
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     Get.to(NotificationView());
              //   },
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //       top: 20.0,
              //       right: 20.0,
              //       bottom: 20.0,
              //     ),
              //     child: NotificationCount(),
              //   ),
              // )
            ],
          ),
          body: Padding(
            padding: normalPadding,
            child: Column(
              children: [
                const UpcomingOrder(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => controller.updateFilter(0),
                      child: Card(
                        color: controller.selectedFilterIndex == 0
                            ? primaryColor
                            : Colors.transparent,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Pending"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.updateFilter(1),
                      child: Card(
                        color: controller.selectedFilterIndex == 1
                            ? primaryColor
                            : Colors.transparent,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Approved"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.updateFilter(2),
                      child: Card(
                        color: controller.selectedFilterIndex == 2
                            ? primaryColor
                            : Colors.transparent,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Rejected"),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => controller.updateFilter(3),
                      child: Card(
                        color: controller.selectedFilterIndex == 3
                            ? primaryColor
                            : Colors.transparent,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("Failed"),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: FireStream(
                    stream: FirebaseFirestore.instance
                        .collection(collection.bookingCollection)
                        .where("user_id", isEqualTo: AppSession.userId)
                        .where("status", isEqualTo: controller.filterStatus)
                        .orderBy("booking_date")
                        .snapshots(
                          includeMetadataChanges: true,
                        ),
                    onSnapshot: (querySnapshot) {
                      return ListView.builder(
                        itemCount: querySnapshot.size,
                        itemBuilder: (context, index) {
                          var item = querySnapshot.docs[index].data()
                              as Map<String, dynamic>;
                          item["id"] = querySnapshot.docs[index].id;
                          return Column(
                            children: [
                              Card(
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${item["product"]}",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Spacer(),
                                        ],
                                      ),
                                      Divider(
                                        color: primaryColor,
                                      ),
                                      ListItem(
                                        label: "Date",
                                        value:
                                            "${friendlydate(item["booking_date"])}",
                                      ),
                                      ListItem(
                                        label: "Time",
                                        value: DateFormat("kk:mm").format(
                                            item["booking_date"].toDate()),
                                      ),
                                      ListItem(
                                        label: config.vendorString,
                                        value: "${item["vendor_name"]}",
                                      ),
                                      ListItem(
                                        label: config.staffString,
                                        value:
                                            "${item["staff"] == null ? "-" : item["staff"]["staff_name"]}",
                                      ),
                                      if (config.setDuration) ...[
                                        const Divider(),
                                        ListItem(
                                          label: "Duration",
                                          value:
                                              "${item["duration"] ?? 0}Hour(s)",
                                          valueStyle: const TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        if (item["products"] != null) ...[
                                          ListItem(
                                            label: "Price",
                                            value:
                                                "\$${item["products"][0]["price"]} /Hour(s)",
                                            valueStyle: const TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          ListItem(
                                            label: "Total",
                                            value: "\$${item["total"] ?? 0}",
                                            valueStyle: const TextStyle(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const Divider(),
                                        ],
                                        ListItem(
                                          label: "Start Date",
                                          value:
                                              "${friendlydate(item["start_date"])}",
                                        ),
                                        ListItem(
                                          label: "End Date",
                                          value:
                                              "${friendlydate(item["end_date"])}",
                                        ),
                                      ],
                                      const Divider(),
                                      ListItem(
                                        label: "Status",
                                        value: "${item["status"]}",
                                        valueStyle: const TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Divider(),
                                      ListItem(
                                        label: "Created At",
                                        value:
                                            "${friendlydate(item["created_at"])}",
                                        valueStyle: const TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      ListItem(
                                        label: "Expired At",
                                        value:
                                            "${friendlydate(item["expired_at"])}",
                                        valueStyle: const TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      Divider(
                                        color: primaryColor,
                                      ),
                                      Row(
                                        children: [
                                          const Spacer(),
                                          if (item["status"] == "Approved" ||
                                              item["status"] == "Rejected")
                                            ExButton(
                                              label: "",
                                              icon: Icons.reviews,
                                              height: 36.0,
                                              onPressed: () async {
                                                if (item["is_vendor_rated"] ==
                                                    true) {
                                                  Get.snackbar(
                                                    "Can't do a review",
                                                    "You have made a review for this order",
                                                  );
                                                  return;
                                                }

                                                showLoading();

                                                var snapshot =
                                                    await FirebaseFirestore
                                                        .instance
                                                        .collection(collection
                                                            .vendorCollection)
                                                        .doc(item["vendor_id"])
                                                        .get();

                                                var vendor = snapshot.data()
                                                    as Map<String, dynamic>;
                                                vendor["id"] = snapshot.id;

                                                hideLoading();

                                                Get.to(
                                                  RateView(
                                                    item: vendor,
                                                    orderId: item["id"],
                                                  ),
                                                );
                                              },
                                            ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          ExButton(
                                            label: "",
                                            icon: Icons.list_rounded,
                                            height: 36.0,
                                            onPressed: () => Get.to(
                                              OrderInvoiceDetailView(
                                                item: item,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          ExButton(
                                            label: "",
                                            icon: Icons.phone,
                                            height: 36.0,
                                            onPressed: () =>
                                                controller.doCall(item),
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          ExButton(
                                            label: "",
                                            icon: Icons.chat,
                                            height: 36.0,
                                            onPressed: () => Get.to(
                                              ChatDetailView(
                                                orderItem: item,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
