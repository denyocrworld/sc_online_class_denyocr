import 'package:flutter/material.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/core.dart';
import '../controller/order_list_controller.dart';

class OrderListView extends StatefulWidget {
  const OrderListView({Key? key}) : super(key: key);

  Widget build(context, OrderListController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("OrderList"),
        actions: const [],
      ),
      body: ListView.builder(
        itemCount: 20,
        physics: const ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text("Order#${index + 1}"),
              subtitle: const Text("15000"),
            ),
          );
        },
      ),
    );
  }

  @override
  State<OrderListView> createState() => OrderListController();
}
