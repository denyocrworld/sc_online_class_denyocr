import 'package:car_rental_app/core.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

enum SelectVendorOrderType {
  rating,
  nearbyLocation,
}

class SelectVendorController extends GetxController {
  SelectVendorView? view;
  String search = "";
  String genderFilter = "All";
  SelectVendorOrderType orderBy = SelectVendorOrderType.nearbyLocation;
  Position? currentUserPosition;

  @override
  void onInit() {
    super.onInit();
    getCurrentUserLocation();
  }



  getCurrentUserLocation() async {
    if (!await Permission.location.request().isGranted) return;
    currentUserPosition = await Geolocator.getCurrentPosition();
    update();
  }

  updateGenderFilter() async {
    if (genderFilter == "All") {
      genderFilter = "Male";
    } else if (genderFilter == "Male") {
      genderFilter = "Female";
    } else if (genderFilter == "Female") {
      genderFilter = "All";
    }
    update();
  }
}
