import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/core.dart';
import 'package:tutorial_responsive_adaptive_state_management_service_locator/state_util.dart';
import '../controller/checkout_controller.dart';

class CheckoutView extends StatefulWidget {
  final MainNavigationController mainNavigationController;
  const CheckoutView({
    Key? key,
    required this.mainNavigationController,
  }) : super(key: key);

  Widget build(context, CheckoutController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkout"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 42,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey,
          ),
          onPressed: () {
            MainNavigationController.instance.updateIndex(1);

            Get.back();
            Get.back();
          },
          child: const Text("Selesai"),
        ),
      ),
    );
  }

  @override
  State<CheckoutView> createState() => CheckoutController();
}
