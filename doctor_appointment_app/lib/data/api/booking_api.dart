import 'dart:collection';

import 'package:doctor_appointment_app/core.dart';

class BookingApi {
  static String? newBookingID;

  static Future<bool> hasPendingBooking() async {
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.bookingCollection)
        .where("user_id", isEqualTo: FirebaseAuth.instance.currentUser!.uid)
        .where("status", isEqualTo: "Pending")
        .get();

    if (snapshot.docs.isEmpty) {
      return Future.value(false);
    }
    return Future.value(true);
  }

  static Future<bool> newBooking(data) async {
    newBookingID = null;
    var vendor = data["vendor"];

    var key =
        "${vendor["id"]}-${DateFormat("ddMMyyyykkmm").format(data["booking_date"])}-${vendor["staff"]["id"]}";

    var doc = await FirebaseFirestore.instance
        .collection(collection.bookingListCollection)
        .doc(key)
        .get();
    if (doc.exists) {
      var d = doc.data() as Map<String, dynamic>;
      var bookingRef = d["booking_ref"];

      var bookingInfoDocSnapshot = await FirebaseFirestore.instance
          .collection(collection.bookingCollection)
          .doc(bookingRef)
          .get();

      var bookingData = bookingInfoDocSnapshot.data() as Map<String, dynamic>;
      if (bookingData["status"] == "Failed") {
        //Skip This if its just a failed Book
      } else {
        return false;
      }
    }

    var docRef = await FirebaseFirestore.instance
        .collection(collection.bookingCollection)
        .add(data);

    await FirebaseFirestore.instance
        .collection(collection.bookingListCollection)
        .doc(key)
        .set(
      {
        "booking_ref": docRef.id,
      },
    );

    if (config.setDuration) {
      DateTime startDate = data["start_date"];
      DateTime endDate = data["end_date"];
      var diffinhour = endDate.difference(startDate).inHours;

      for (var i = 0; i < diffinhour; i++) {
        var loopDate = startDate.add(Duration(hours: i));
        var bookingKey =
            "${vendor["id"]}-${DateFormat("ddMMyyyykkmm").format(loopDate)}-${vendor["staff"]["id"]}";
        await FirebaseFirestore.instance
            .collection(collection.bookingListCollection)
            .doc(bookingKey)
            .set(
          {
            "booking_ref": docRef.id,
          },
        );
      }
    } else {
      await FirebaseFirestore.instance
          .collection(collection.bookingListCollection)
          .doc(key)
          .set(
        {
          "booking_ref": docRef.id,
        },
      );
    }

    newBookingID = docRef.id;
    return true;
  }

  static Future updateBooking(String ref, Map value) async {
    await FirebaseFirestore.instance
        .collection(collection.bookingCollection)
        .doc(ref)
        .update(HashMap.from(value));
  }
}
