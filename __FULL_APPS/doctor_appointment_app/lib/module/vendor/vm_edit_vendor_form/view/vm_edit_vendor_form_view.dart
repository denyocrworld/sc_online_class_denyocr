import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class VmEditVendorFormView extends StatelessWidget {
  final controller = Get.put(VmEditVendorFormController());

  VmEditVendorFormView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<VmEditVendorFormController>(
      builder: (_) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Edit ${config.vendorString}"),
              actions: [
                ExButton(
                  label: "Save",
                  onPressed: () => controller.save(),
                ),
              ],
              bottom: TabBar(
                tabs: [
                  const Tab(
                    icon: Text(
                      "General",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      config.productString,
                      style: const TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                  const Tab(
                    icon: Text(
                      "Gallery",
                      style: TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                  Tab(
                    icon: Text(
                      config.staffString,
                      style: const TextStyle(
                        fontSize: 11.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TabBarView(
                children: [
                  const VmGeneralForm(),
                  VmProductForm(),
                  VmGalleryForm(),
                  VmStaffForm(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
