import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class VmOrderListView extends StatelessWidget {
  final controller = Get.put(VmOrderListController());

  VmOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<VmOrderListController>(
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
                    top: 16.0,
                    bottom: 16.0,
                    right: 8.0,
                  ),
                  child: VmChatCount(),
                ),
              ),
              InkWell(
                onTap: () => Get.to(const VmOrderCalendarView()),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Icon(Icons.calendar_today),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: normalPadding,
            child: Column(
              children: [
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
                        .where("vendor_id", isEqualTo: AppSession.userId)
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
                                          Expanded(
                                            child: Text(
                                              "${item["user_name"]}",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20.0,
                                          ),
                                          ExButton(
                                            label: "Rate",
                                            height: 26.0,
                                            fontSize: 10.0,
                                            onPressed: () {
                                              Get.to(
                                                RateView(
                                                  item: item,
                                                  orderId: item["id"],
                                                  rateClient: true,
                                                ),
                                              );
                                            },
                                          ),
                                          const SizedBox(
                                            width: 10.0,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(ChatDetailView(
                                                orderItem: item,
                                              ));
                                            },
                                            child: const Icon(
                                              Icons.chat,
                                            ),
                                          ),
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
                                            "${friendlydate(item["created_at"].toDate())}",
                                        valueStyle: const TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      ListItem(
                                        label: "Expired At",
                                        value:
                                            "${friendlydate(item["expired_at"].toDate())}",
                                        valueStyle: const TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      Divider(
                                        color: primaryColor,
                                      ),
                                      Divider(
                                        color: primaryColor,
                                      ),
                                      if (controller.selectedFilterIndex == 0)
                                        Row(
                                          children: [
                                            ExButton(
                                              label: "",
                                              icon: Icons.list_alt_rounded,
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
                                            Expanded(
                                              child: ExButton(
                                                label: "Approve",
                                                height: 40.0,
                                                fontSize: 10.0,
                                                onPressed: () =>
                                                    controller.doApprove(item),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            Expanded(
                                              child: ExButton(
                                                label: "Reject",
                                                height: 40.0,
                                                fontSize: 10.0,
                                                onPressed: () =>
                                                    controller.doReject(item),
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
