import 'package:car_rental_app/core.dart';

class VendorDetailController extends GetxController {
  VendorDetailView? view;
  bool loading = true;


  @override
  void onReady() {
    super.onReady();
    print("#############");
    print(view?.item["id"]);
    print("#############");
    loadData();
  }


  loadData() async {
    loading = false;
    update();
  }
}
