import 'dart:developer';

import 'package:barber_app/core.dart';

import 'package:flutter/material.dart';

class LoginSessionHandler {
  static Future<Widget> getMainView() async {
    if (FirebaseAuth.instance.currentUser == null) {
      if (config.useAlternativeLogin) {
        return const AlternativeMainNavigationView();
      }
      return LoginView();
    }

    if (await isAnAdmin(FirebaseAuth.instance.currentUser!.uid)) {
      return AdmMainNavigationView();
    }

    if (await isVendorOwner(FirebaseAuth.instance.currentUser!.uid)) {
      return const VmMainNavigationView();
    }

    var hasPendingBooking = await BookingApi.hasPendingBooking();
    log("hasPendingBooking: $hasPendingBooking");
    return MainNavigationView(
      selectedIndex: hasPendingBooking ? 0 : 0,
    );
  }

  static Future<bool> isAnAdmin(uid) async {
    var adminSnapshot = await FirebaseFirestore.instance
        .collection(collection.adminCollection)
        .get();

    if (adminSnapshot.docs.isNotEmpty) {
      if (adminSnapshot.docs[0]["uid"] == uid) {
        return true;
      }
    }
    return false;
  }

  static Future<bool> isVendorOwner(uid) async {
    var snapshot = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(uid)
        .get();

    if (snapshot.exists) {
      return true;
    }
    return false;
  }
}
