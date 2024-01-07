import 'package:doctor_appointment_app/core.dart';

class VmEditVendorFormController extends GetxController {
  VmEditVendorFormView? view;

  List productList = [];
  List galleryList = [];




  save() async {
    showLoading();
    var vendorId = AppSession.userId;
    var vendorName = Input.get("vendor_name");
    var photoUrl = Input.get("photo_url");
    var phone = Input.get("phone");
    var address = Input.get("address");
    var website = Input.get("website");
    var aboutUs = Input.get("about_us");
    var latitude = Input.get("location_latitude");
    var longitude = Input.get("location_longitude");

    print("latitude: $latitude");
    print("longitude: $longitude");

    await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(vendorId)
        .update({
      "vendor_name": vendorName,
      "photo_url": photoUrl,
      "phone": phone,
      "address": address,
      "website": website,
      "about_us": aboutUs,
      "latitude": latitude,
      "longitude": longitude,
    });

    AppSession.myVendor["vendor_name"] = vendorName;
    AppSession.myVendor["photo_url"] = photoUrl;
    AppSession.myVendor["phone"] = phone;
    AppSession.myVendor["website"] = website;
    AppSession.myVendor["address"] = address;
    AppSession.myVendor["about_us"] = aboutUs;

    hideLoading();
  }
}
