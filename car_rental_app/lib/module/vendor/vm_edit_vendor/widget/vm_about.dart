import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VmAboutView extends StatelessWidget {
  final dynamic item;
  const VmAboutView({super.key, 
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: Get.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //ABOUT
            const Text(
              'Why Choose Us',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              '${item["about_us"]}',
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
