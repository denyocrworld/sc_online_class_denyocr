import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class AdmVendorManagerView extends StatelessWidget {
  final controller = Get.put(AdmVendorManagerController());
  AdmVendorManagerView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AdmVendorManagerController>(
      builder: (_) {
        return CrudListView(
          title: "Vendor Manager",
          ref: FirebaseFirestore.instance
              .collection(collection.vendorCollection),
          defaultOrderBy: "vendor_name",
          itemFields: const [
            {
              "header": "Photo",
              "field_name": "photo_url",
              "type": "image",
              "width": 140,
            },
            {
              "header": "Vendor Name",
              "field_name": "vendor_name",
              "type": "text",
              "expanded": true,
            },
          ],
          formFields: const [],
          rowHeight: 140.0,
          disableEdit: true,
          disableAdd: true,
          disableDelete: true,
          onItemBuild: (item) {
            return AdmVendorDetail(
              vendorId: item["id"],
              vendor: item,
            );
          },
        );
      },
    );
  }
}
