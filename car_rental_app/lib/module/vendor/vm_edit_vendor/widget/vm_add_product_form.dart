import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class VmAddProductFormView extends StatelessWidget {
  const VmAddProductFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add ${config.productString}"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExButton(
              label: "Save",
              onPressed: () async {
                String productName = Input.get("product_name");
                String price = Input.get("price");
                String description = Input.get("description");
                String gender = Input.get("gender");
                String executionTime = Input.get("execution_time");

                if (productName.isEmpty) {
                  showSnackbar(
                    message: "Product name is required",
                    backgroundColor: dangerColor,
                  );
                  return;
                }

                showLoading();
                await VendorApi.addSevice(
                  productName: productName,
                  price: price,
                  description: description,
                  image: Input.get("image"),
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
              onChanged: (value) {},
            ),
            ExTextField(
              id: "product_name",
              label: "${config.productString} Name",
            ),
            const ExTextField(
              id: "price",
              label: "Price",
            ),
            if (config.fieldConfig["gender"]["enabled"] == true)
              const ExCombo(
                id: "gender",
                label: "Gender",
                items: [
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
                ],
                value: "All",
              ),
            if (config.fieldConfig["execution_time"]["enabled"] == true)
              const ExCombo(
                id: "execution_time",
                label: "Execution Time",
                items: [
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
                value: "10 Min",
              ),
            const ExTextArea(
              id: "description",
              label: "Description",
            ),
          ],
        ),
      ),
    );
  }
}
