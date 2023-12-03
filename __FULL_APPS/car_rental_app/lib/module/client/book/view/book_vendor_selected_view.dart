import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class BookVendorSelectedView extends StatelessWidget {
  const BookVendorSelectedView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BookController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text("Book"),
            actions: [
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Cancel"),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: SelectedVendor(),
                      ),
                      Expanded(
                        child: SelectedStaff(),
                      ),
                    ],
                  ),
                  // ExStreamRadio(
                  //   id: "product",
                  //   label: "${config.productString}",
                  //   valueField: "id",
                  //   displayField: "title",
                  //   stream: FirebaseFirestore.instance
                  //       .collection(collection.vendorCollection)
                  //       .doc(controller.selectedVendor["id"])
                  //       .collection("products")
                  //       .snapshots(),
                  // ),
                  ExScaffoldPicker(
                    id: "product",
                    label: config.productString,
                    valueField: "id",
                    displayField: "title",
                    stream: FirebaseFirestore.instance
                        .collection(collection.vendorCollection)
                        .doc(controller.selectedVendor!["id"])
                        .collection("products")
                        .snapshots(),
                    onSelected: () {},
                  ),
                  // ExStreamRadio(
                  //   id: "duration",
                  //   // label: "${config.productString}",
                  //   label: "Duration",
                  //   valueField: "id",
                  //   displayField: "title",
                  //   stream: FirebaseFirestore.instance
                  //       .collection(collection.vendorCollection)
                  //       .doc(controller.selectedVendor["id"])
                  //       .collection("products")
                  //       .snapshots(),
                  // ),

                  if (config.setDuration == true)
                    const ExRadio(
                      id: "duration",
                      label: "Duration",
                      items: [
                        {
                          "label": "1 Hour",
                          "value": "1",
                        },
                        {
                          "label": "2 Hour",
                          "value": "2",
                        },
                        {
                          "label": "6 Hour",
                          "value": "6",
                        },
                        {
                          "label": "12 Hour",
                          "value": "12",
                        },
                        {
                          "label": "24 Hour",
                          "value": "24",
                        },
                      ],
                    ),
                  ExDatePicker(
                    id: "booking_date",
                    label: "Booking Date",
                    value: controller.getFirstDate(),
                    firstDate: controller.getFirstDate(),
                  ),
                  ExTimeRadio(
                    id: "time",
                    label: "Time",
                    wrapped: true,
                    items: controller.getTimeItems(),
                    value: "08:00",
                    onChanged: (value) async {
                      if (!controller.isStaffNotSelected) {
                        Get.snackbar(
                          "Please, re-select your ${config.staffString}",
                          "You have changed the time, this action is required.",
                        );
                        controller.removeSelectedStaff();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 80.0,
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () async {
                if (controller.isProductNotSelected) {
                  Get.snackbar(
                      "Product is required", "Please select a product");
                  return;
                }

                if (config.setDuration) {
                  if (Input.get("duration") == null) {
                    Get.snackbar(
                      "Duration is required",
                      "Please select rent duration!",
                    );
                    return;
                  }
                }

                if (controller.isStaffNotSelected) {
                  await Get.to(const SelectStaffView());
                  controller.update();

                  await Future.delayed(const Duration(seconds: 1));
                  controller.update();
                  return;
                } else {
                  Get.delete<BookDetailController>();
                  await Get.to(
                    BookDetailView(),
                    preventDuplicates: false,
                  );
                }
              },
              child: Text(
                controller.isStaffNotSelected
                    ? "Select ${config.staffString}"
                    : "Book",
              ),
            ),
          ),
        );
      },
    );
  }
}
