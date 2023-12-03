import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';


class OrderInvoiceDetailView extends StatelessWidget {
  final dynamic item;
  OrderInvoiceDetailView({super.key, 
    required this.item,
  });

  final controller = Get.put(OrderInvoiceDetailController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<OrderInvoiceDetailController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              DateFormat("d MMM y kk:mm").format(item["booking_date"].toDate()),
            ),
            // leading: Icon(
            //   Icons.keyboard_arrow_down,
            //   color: Colors.black,
            //   size: 38,
            // ),
          ),
          body: Container(
            height: Get.height,
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Divider(
                  color: primaryColor,
                ),
                ListItem(
                  label: "Booking ID",
                  value: "${item["id"]}",
                  valueStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ListItem(
                  label: "Date",
                  value: "${friendlydate(item["booking_date"])}",
                ),
                ListItem(
                  label: "Time",
                  value:
                      DateFormat("kk:mm").format(item["booking_date"].toDate()),
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
                    value: "${item["duration"] ?? 0}Hour(s)",
                    valueStyle: const TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (item["products"] != null) ...[
                    ListItem(
                      label: "Price",
                      value: "\$${item["products"][0]["price"]} /Hour(s)",
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
                  value: "${friendlydate(item["created_at"].toDate())}",
                  valueStyle: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                ListItem(
                  label: "Expired At",
                  value: "${friendlydate(item["expired_at"].toDate())}",
                  valueStyle: const TextStyle(
                    fontSize: 12.0,
                  ),
                ),
                Divider(
                  color: primaryColor,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
