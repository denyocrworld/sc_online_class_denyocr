import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class VmEditStaffFormView extends StatelessWidget {
  final Map<String, dynamic> item;
  const VmEditStaffFormView({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit ${config.staffString}"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12.0,
              bottom: 12.0,
            ),
            child: ExButton(
              label: "Delete",
              onPressed: () async {
                showLoading();
                await VendorApi.deleteVendor(
                  item: item,
                );
                hideLoading();
                Get.back();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ExButton(
              label: "Save",
              onPressed: () async {
                String staffName = Input.get("staff_name");
                String photo = Input.get("photo");
                String description = Input.get("description");
                List staffProducts = Input.get("product");

                if (staffName.isEmpty) {
                  showSnackbar(
                    message: "Vendor name is required",
                    backgroundColor: dangerColor,
                  );
                  return;
                }

                showLoading();
                await VendorApi.updateVendor(
                  id: item["id"],
                  staffName: staffName,
                  photo: photo,
                  description: description,
                  staffProducts: staffProducts,
                );
                hideLoading();

                Get.back();
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QImagePicker(
              id: "photo",
              label: "Photo",
              value: item["photo"],
              onChanged: (value) {},
            ),
            ExTextField(
              id: "staff_name",
              label: "Vendor Name",
              value: item["staff_name"],
            ),
            if (config.linkProductToStaff)
              ExStreamCheckbox(
                id: "product",
                ownerId: item["id"],
                label: config.productString,
                valueField: "id",
                displayField: "title",
                stream: FirebaseFirestore.instance
                    .collection(collection.vendorCollection)
                    .doc(AppSession.userId)
                    .collection("products")
                    .snapshots(),
                valueRef: FirebaseFirestore.instance
                    .collection(collection.vendorCollection)
                    .doc(AppSession.userId)
                    .collection("staffs")
                    .doc(item["id"]),
                valueKey: "staff_products",
                onSelected: (value) {},
              ),
            ExTextArea(
              id: "description",
              label: "Description",
              value: item["description"],
            ),
          ],
        ),
      ),
    );
  }
}
