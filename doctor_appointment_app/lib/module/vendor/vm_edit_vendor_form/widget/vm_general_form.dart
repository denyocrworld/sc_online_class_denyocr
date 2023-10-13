import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class VmGeneralForm extends StatelessWidget {
  const VmGeneralForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExTextField(
            id: "vendor_name",
            label: "Vendor Name",
            value: AppSession.myVendor["vendor_name"],
          ),
          QImagePicker(
            id: "photo_url",
            label: "Photo",
            value: AppSession.myVendor["photo_url"],
            onChanged: (value) {},
          ),
          ExTextField(
            id: "phone",
            label: "Phone",
            value: AppSession.myVendor["phone"],
          ),
          ExTextField(
            id: "website",
            label: "Website",
            value: AppSession.myVendor["website"],
          ),
          ExLocationPicker(
            id: "location",
            label: "Location",
            latitude: AppSession.myVendor["latitude"],
            longitude: AppSession.myVendor["longitude"],
          ),
          ExTextArea(
            id: "address",
            label: "Address",
            value: AppSession.myVendor["address"],
          ),
          ExTextArea(
            id: "about_us",
            label: "About Us",
            value: AppSession.myVendor["about_us"],
          ),
        ],
      ),
    );
  }
}
