import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class FirestoreSelect extends StatefulWidget {
  final String staffId;
  final Function onPressed;
  const FirestoreSelect({
    super.key,
    required this.staffId,
    required this.onPressed,
  });

  @override
  _FirestoreSelectState createState() => _FirestoreSelectState();
}

class _FirestoreSelectState extends State<FirestoreSelect> {
  BookController bookController = Get.find();
  bool loading = true;
  bool enabled = false;

  String get bookingKey {
    var vendor = bookController.selectedVendor;
    var bookingDate = Input.get("booking_date");
    var bookingTime = Input.get("time");
    bookingTime = bookingTime.toString().replaceAll(":", "");

    return "${vendor!["id"]}-${DateFormat("ddMMyyyy").format(bookingDate)}$bookingTime-${widget.staffId}";
  }

  @override
  void initState() {
    super.initState();
    initData();
  }

  initData() async {
    var key = bookingKey;
    var doc = await FirebaseFirestore.instance
        .collection(collection.bookingListCollection)
        .doc(key)
        .get();

    print("------------------");
    print("KEY: $key");
    print("------------------");

    if (doc.exists) {
      var d = doc.data() as Map<String, dynamic>;
      var bookingRef = d["booking_ref"];
      var bookingSnapshot = await FirebaseFirestore.instance
          .collection(collection.bookingCollection)
          .doc(bookingRef)
          .get();
      var bookingData = bookingSnapshot.data() as Map<String, dynamic>;
      var bookingStatus = bookingData["status"];
      if (bookingStatus != "Failed") {
        enabled = false;
      } else {
        enabled = true;
      }
    } else {
      enabled = true;
    }

    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return ExButton(
        label: "Loading...",
        color: disabledColor,
        height: 40.0,
        fontSize: 10.0,
        onPressed: () {},
      );
    }

    if (!enabled) {
      return SizedBox(
        width: Get.width,
        child: ExButton(
          label: "Unavailable",
          color: disabledColor,
          height: 40.0,
          fontSize: 10.0,
          onPressed: () {},
        ),
      );
    }

    return SizedBox(
      width: Get.width,
      child: ExButton(
        label: "Select",
        color: disabledColor,
        height: 40.0,
        fontSize: 10.0,
        onPressed: () {
          widget.onPressed();
        },
      ),
    );
  }
}
