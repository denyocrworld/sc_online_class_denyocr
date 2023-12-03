import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class SelectedProduct extends StatelessWidget {
  const SelectedProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var productItem = Input.get("product_item");

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
              ),
              Text(
                config.productString,
                style: const TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                productItem["label"],
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
              ),
              const Text(
                "Price",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                "${AppSession.currency}${productItem["price"]}",
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
