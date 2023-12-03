import 'package:doctor_appointment_app/core.dart';

import 'package:flutter/material.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookController>(
      init: BookController(),
      builder: (controller) {
        controller.view = this;

        if (controller.loading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (AdminSettingApi.appSetting["multi_vendor"] == false) {
          // return BookVendorSelectedView();

          if (controller.selectedVendor == null) {
            controller.reloadVendor();
            return const Center(child: CircularProgressIndicator());
          }

          return VendorDetailView(
            item: controller.selectedVendor!,
            onSelect: (item) {
              controller.selectedVendor = item;
              controller.update();
            },
          );
        }

        return SelectVendorView(
          onSelect: (item) {
            controller.selectedVendor = item;
            controller.update();
          },
        );
      },
    );
  }
}
