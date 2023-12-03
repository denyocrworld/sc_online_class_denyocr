import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class OrderDetailView extends StatelessWidget {
  final List orderList;
  const OrderDetailView({super.key, 
    required this.orderList,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderDetailController>(
      init: OrderDetailController(),
      builder: (controller) {
        controller.view = this;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Upcoming Order"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) {
                var item = orderList[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${friendlydate(item["booking_date"])}"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Divider(),
                        Text("${config.productString}:\n${item["product"]}"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                            "${config.staffString}:\n${item["staff"]["staff_name"]}"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text("${config.vendorString}:\n${item["vendor_name"]}"),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Divider(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
