import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class VmEditProductFormView extends StatelessWidget {
  final Map<String, dynamic> item;
  const VmEditProductFormView({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit ${config.productString}"),
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
                  await VendorApi.deleteProduct(
                    item: item,
                  );
                  hideLoading();
                  Get.back();
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ExButton(
              label: "Save",
              onPressed: () async {
                String productName = Input.get("product_name");
                String image = Input.get("image");
                String price = Input.get("price");
                String description = Input.get("description");
                String gender = Input.get("gender");
                String executionTime = Input.get("execution_time");

                if (productName.isEmpty) {
                  showSnackbar(
                    message: "Vendor name is required",
                    backgroundColor: dangerColor,
                  );
                  return;
                }

                showLoading();
                await VendorApi.updateProduct(
                  id: item["id"],
                  productName: productName,
                  image: image,
                  price: price,
                  description: description,
                  gender: gender,
                  executionTime: executionTime,
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
              id: "image",
              label: "${config.productString} Photo",
              value: item["image"],
              onChanged: (value) {},
            ),
            ExTextField(
              id: "product_name",
              label: "${config.productString} Name",
              value: item["title"],
            ),
            ExTextField(
              id: "price",
              label: "Price (${AppSession.currency})",
              value: item["price"],
            ),
            if (config.fieldConfig["gender"]["enabled"] == true)
              ExCombo(
                id: "gender",
                label: "Gender",
                items: const [
                  {
                    "label": "All",
                    "value": "All",
                  },
                  {
                    "label": "Male",
                    "value": "Male",
                  },
                  {
                    "label": "Female",
                    "value": "Female",
                  }
                ], //
                value: item["gender"] ?? "All",
              ),
            if (config.fieldConfig["execution_time"]["enabled"] == true)
              ExCombo(
                id: "execution_time",
                label: "Execution Time",
                items: const [
                  {
                    "label": "10 Min",
                    "value": "10 Min",
                  },
                  {
                    "label": "15 Min",
                    "value": "15 Min",
                  },
                  {
                    "label": "30 Min",
                    "value": "30 Min",
                  },
                  {
                    "label": "45 Min",
                    "value": "45 Min",
                  },
                  {
                    "label": "60 Min",
                    "value": "60 Min",
                  }
                ],
                value: item["execution_time"] ?? "10 Min",
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
