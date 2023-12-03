import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class VmAddGalleryPhotoFormView extends StatelessWidget {
  const VmAddGalleryPhotoFormView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Photo to Gallery"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ExButton(
              label: "Save",
              onPressed: () async {
                String image = Input.get("image");
                if (image.isEmpty) {
                  showSnackbar(
                    message: "Photo is required",
                    backgroundColor: dangerColor,
                  );
                  return;
                }

                showLoading();
                await VendorApi.addGalleryPhoto(
                  image: Input.get("image"),
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
              label: "Photo",
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
