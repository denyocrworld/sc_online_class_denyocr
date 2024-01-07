import 'dart:developer';

import 'package:car_rental_app/core.dart';

class RateController extends GetxController {
  RateView? view;
  double rate = 0.0;

  rateVendor(item) async {
    String memo = Input.get("memo");
    if (!view!.rateClient) {
      await FirebaseFirestore.instance.runTransaction((transaction) async {
        showLoading();

        var vendorDocRef = FirebaseFirestore.instance
            .collection(collection.vendorCollection)
            .doc(item["id"]);
        var snapshot = await transaction.get(vendorDocRef);
        var vendor = snapshot.data() as Map<String, dynamic>;
        var currentRate = vendor["rate"];
        var currentRateCount = vendor["rate_count"];

        var newRate =
            (((currentRate * currentRateCount) + rate) / currentRateCount + 1);

        await FirebaseFirestore.instance
            .collection(collection.ratingCollection)
            .add({
          "user_id": AppSession.userId,
          "order_id": item["id"],
          "staff": item["id"],
          "rate": newRate,
          "rate_count": currentRateCount + 1,
          "date": Timestamp.now(),
          "rate_as": "client",
        });

        await FirebaseFirestore.instance
            .collection(collection.vendorCollection)
            .doc(item["id"])
            .collection("reviews")
            .add(
          {
            "photo_url": AppSession.currentUser!.photoURL,
            "name": AppSession.currentUser!.displayName,
            "date": Timestamp.now(),
            "comment": memo,
            "rate": rate,
          },
        );

        await FirebaseFirestore.instance
            .collection(collection.bookingCollection)
            .doc(view!.orderId)
            .update({
          "is_vendor_rated": true,
          "vendor_rate": newRate,
        });

        transaction.update(vendorDocRef, {
          "rate": rate,
        });

        hideLoading();
        Get.back();
        showSnackbar(
          message: "Rating was successful",
        );
      });
    } else {
      //Rate Client
      showLoading();

      var snapshot = await FirebaseFirestore.instance
          .collection(collection.userDataCollection)
          .doc(item["user_id"])
          .get();
      var d = snapshot.data() as Map<String, dynamic>;

      var currentRate = d["profile"]["rate"] ?? 0;
      var currentRateCount = d["profile"]["rate_count"] ?? 0;

      log("currentRate: $currentRate");
      log("currentRateCount: $currentRateCount");

      double newRate = 0;
      var newRateCount = 0;
      newRateCount = currentRateCount + 1;

      if (currentRateCount > 0) {
        newRate = (currentRate + rate) / newRateCount;
      } else {
        newRate = rate;
      }

      log("newRate: $newRate");
      log("newRateCount: $newRateCount");

      await FirebaseFirestore.instance
          .collection(collection.userRatingCollection)
          .add({
        "user_id": item["user_id"],
        "order_id": item["id"],
        "rate": newRate,
        "rate_count": newRateCount,
        "rate_as": "vendor",
        "date": Timestamp.now(),
      });

      d["profile"]["rate"] = newRate;
      d["profile"]["rate_count"] = newRateCount;

      await FirebaseFirestore.instance
          .collection(collection.userDataCollection)
          .doc(item["user_id"])
          .update({
        "profile": d["profile"],
      });

      hideLoading();
      Get.back();
      showSnackbar(
        message: "Rating was successful",
      );
    }
  }
}
