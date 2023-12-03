import 'dart:async';

import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class UpcomingOrderController extends GetxController {
  List orderList = [];
  late Timer timer;

  @override
  void onInit() async {
    super.onInit();
    loadData();

    timer = Timer.periodic(const Duration(seconds: 60), (t) {
      loadData();
    });
  }

  @override
  void onClose() {
    super.onClose();
    timer.cancel();
  }

  void loadData() async {
    if (FirebaseAuth.instance.currentUser == null) return;
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.bookingCollection)
        .where("user_id", isEqualTo: AppSession.userId)
        .where("status", isEqualTo: "Approved")
        .where("booking_date",
            isLessThanOrEqualTo: DateTime.now().add(const Duration(hours: 2)))
        .where("booking_date", isGreaterThan: DateTime.now())
        .orderBy("booking_date")
        .get();
    orderList = snapshot.toList();
    update();

    print("Reload Data..");
  }
}

class UpcomingOrder extends StatelessWidget {
  const UpcomingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<UpcomingOrderController>(
      init: UpcomingOrderController(),
      builder: (controller) {
        if (controller.orderList.isEmpty) return Container();
        return Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            bottom: 10.0,
          ),
          child: Card(
            color: primaryColor!.withOpacity(0.8),
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.only(
                top: 12.0,
                bottom: 12.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: Text("REMINDER: You have an upcoming book"),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  ExButton(
                    height: 36.0,
                    label: "View",
                    onPressed: () => Get.to(
                      OrderDetailView(orderList: controller.orderList),
                    ),
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
