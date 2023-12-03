import 'package:doctor_appointment_app/core.dart';

class SelectVendorDetailController extends GetxController {
  SelectVendorDetailView? view;
  bool loading = true;
  bool visible = false;
  List products = [];
  dynamic viewItem;


  @override
  void onReady() async {
    super.onReady();

    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(viewItem["id"])
        .collection("products")
        .get();
    products = snapshot.toList();

    SelectVendorController selectVendorController = Get.find();
    if (selectVendorController.genderFilter != "All") {
      var filteredProducts = products
          .where((i) => i["gender"] == selectVendorController.genderFilter)
          .toList();
      if (filteredProducts.isNotEmpty) {
        visible = true;
      } else {
        visible = false;
      }
    } else {
      visible = true;
    }

    loading = false;
    update();
  }

}
