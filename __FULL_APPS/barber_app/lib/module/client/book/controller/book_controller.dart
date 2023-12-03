import 'package:barber_app/core.dart';


class BookController extends GetxController {
  bool loading = true;
  BookView? view;
  Map<String, dynamic>? selectedVendor;

  @override
  void onInit() async {
    super.onInit();
    await selectVendorOnMode();
    loading = false;
    update();
  }

  void reloadVendor() async {
    loading = true;
    update();

    await selectVendorOnMode();

    loading = false;
    update();
  }

  selectVendorOnMode() async {
    if (AdminSettingApi.appSetting["multi_vendor"] == false) {
      var adminUid = await AdminApi.getAdminUid();
      var snapshot = await FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .doc(adminUid)
          .get();
      selectedVendor = snapshot.data() as Map<String, dynamic>;
      selectedVendor!["id"] = adminUid;
      selectedVendor!["products"] = await VendorApi.getProducts(adminUid);

      print("ADMIN VENDOR: $selectedVendor");
      print("ADMIN VENDOR PRODUCTS: ${selectedVendor!["products"]}");
    }
  }

  List<Map<String, dynamic>> getTimeItems() {
    List<Map<String, dynamic>> items = [];

    var today = DateTime.now();
    DateTime startTime = DateTime(
      today.year,
      today.month,
      today.day,
      8,
      0,
    );

    DateTime endTime = DateTime(
      today.year,
      today.month,
      today.day,
      21,
      0,
    );

    while (startTime.isBefore(endTime) || startTime.isAtSameMomentAs(endTime)) {
      var label = DateFormat("kk:mm").format(startTime);

      items.add({
        "label": label,
        "value": label,
      });

      startTime = startTime.add(const Duration(hours: 1));
    }
    return items;
  }

  String? get getVendorPhoto {
    late String? vendorPhoto;
    if (selectedVendor != null && selectedVendor!["staff"] != null) {
      vendorPhoto = selectedVendor!["staff"]["photo"];
    }
    return vendorPhoto;
  }

  bool get isStaffNotSelected {
    if (selectedVendor?["staff"] != null) return false;
    return true;
  }

  bool get isProductNotSelected {
    if (Input.get("product") == null) return true;
    return false;
  }

  getSelectedStaff() {
    return selectedVendor?["staff"];
  }

  removeSelectedStaff() {
    selectedVendor?["staff"] = null;
    update();
  }

  onBook() async {
    var product = Input.get("product");
    var productDetail = Input.get("product_item");
    var bookingDate = Input.get("booking_date");
    var time = Input.get("time");
    var duration = Input.get("duration") ?? 0;
    var startDate = Input.get("start_date");
    var endDate = Input.get("end_date");

    print("product: $product");
    print("productDetail: $productDetail");
    print("booking_date: $bookingDate");
    print("time: $time");

    if (bookingDate == null) {
      showAlert(
        message: "Booking date is required",
        alertType: AlertType.warning,
      );
      return;
    }

    DateTime bDate = bookingDate;
    var arr = time.split(":");
    bookingDate = DateTime(
      bDate.year,
      bDate.month,
      bDate.day,
      int.parse(arr[0]),
      int.parse(arr[1]),
    );

    showLoading();
    var total = int.parse("${productDetail["qty"]}") *
        double.parse("${productDetail["price"]}");
    if (config.setDuration) {
      productDetail["qty"] = duration;
      total = int.parse(duration) * double.parse(productDetail["price"]);
    }

    var isSuccess = await BookingApi.newBooking({
      "product": product,
      "booking_date": bookingDate,
      "booking_time": time,
      "duration": duration,
      "start_date": startDate,
      "end_date": endDate,
      "created_at": DateTime.now(),
      "expired_at": bookingDate.add(const Duration(minutes: 15)),
      "products": [
        productDetail,
      ],
      "total": total,
      "vendor": selectedVendor,
      "vendor_name": selectedVendor?["vendor_name"],
      "status": "Pending",
      "payment_status": "Success",
      //-----------
      "user_id": AppSession.userId,
      "user_name": AppSession.currentUser!.displayName,
      "vendor_id": selectedVendor!["id"],
      "staff": selectedVendor!["staff"],
    });

    if (isSuccess) {
      await BookingApi.updateBooking(BookingApi.newBookingID!, {
        "status": "Pending",
        "payment_status": "Success",
      });

      hideLoading();

      await showAlert(
        alertType: AlertType.success,
        message: "Your booking is successful",
      );

      await Get.backUntil("$MainNavigationView");
      return;
    } else {
      hideLoading();

      await showAlert(
        alertType: AlertType.warning,
        message:
            "There is already a booking at this hour.\nChoose another time.",
      );
    }
  }

  DateTime getFirstDate() {
    DateTime now = DateTime.now().add(const Duration(days: 1));

    return DateTime(
      now.year,
      now.month,
      now.day,
      0,
      0,
    );
  }
}
