import 'package:barber_app/core.dart';
import 'package:flutter/services.dart';

import 'package:permission_handler/permission_handler.dart';

class AppPermission {
  static showManualConfirmation(context) {
    showSnackbar(
        message: "You should accept all permission needed to use this feature");
  }

  static Future<bool> getAttendancePermission(context) async {
    var onRequestRequired = await requestRequiredPermission(permissionList: [
      Permission.location,
      Permission.camera,
      Permission.microphone,
      Permission.storage,
    ]);

    if (!onRequestRequired) {
      showManualConfirmation(context);
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  static Future<bool> getLocationPermission(context) async {
    await [
      Permission.location,
      Permission.storage,
    ].request();

    var onRequestRequired = await requestRequiredPermission(permissionList: [
      Permission.location,
    ]);

    if (!onRequestRequired) {
      showManualConfirmation(context);
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  static Future<bool> requestRequiredPermission({
    required List<Permission> permissionList,
  }) async {
    bool isGranted = true;

    for (var i = 0; i < permissionList.length; i++) {
      var permission = permissionList[i];
      try {
        //Check Permission
        PermissionStatus permissionStatus = await permission.status;
        // await Permission.checkPermissionStatus(permissionGroup);

        if (permissionStatus == PermissionStatus.granted) {
          //Skip Request Permission if Already Granted
          continue;
        } else if (permissionStatus == PermissionStatus.denied) {
          isGranted = false;
          continue;
        }

        //Request Permission

        var permissions = await permission.request();
//
        if (permissions != PermissionStatus.granted) {
          isGranted = false;
        }
      } on PlatformException catch (_) {}
    }

    return Future.value(isGranted);
  }
}
