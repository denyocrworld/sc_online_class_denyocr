import 'package:barber_app/core.dart';

class AdminSettingApi {
  static Map appSetting = {};
  static List availableConfigs = [
    {
      "label": "Vendor Approval",
      "field_name": "vendor_approval",
      "readonly": true,
    },
    {
      "label": "Enable Multivendor",
      "field_name": "multi_vendor",
    },
  ];

  static initialize() async {
    await FirebaseFirestore.instance
        .collection(collection.adminSettingCollection)
        .doc("app_setting")
        .set({});

    for (var i = 0; i < availableConfigs.length; i++) {
      var config = availableConfigs[i];
      await FirebaseFirestore.instance
          .collection(collection.adminSettingCollection)
          .doc("app_setting")
          .update({
        config["field_name"]: true,
      });
    }
  }

  static loadAppSetting() async {
    var appSettingSnapshot = await FirebaseFirestore.instance
        .collection(collection.adminSettingCollection)
        .doc("app_setting")
        .get();

    if (!appSettingSnapshot.exists) return;

    var d = appSettingSnapshot.data() as Map<String, dynamic>;
    AdminSettingApi.appSetting = d;
    print(">>> ${AdminSettingApi.appSetting}");
  }

  static getAppThemeIndex({
    defaultThemeIndex,
  }) async {
    var themeSettingSnapshot = await FirebaseFirestore.instance
        .collection(collection.adminSettingCollection)
        .doc("theme_setting")
        .get();

    if (themeSettingSnapshot.exists) {
      var d = themeSettingSnapshot.data() as Map<String, dynamic>;
      return d["theme_index"] ?? 0;
    } else {
      return defaultThemeIndex ?? 0;
    }
  }

  static setAppThemeIndex(int index) async {
    //Only Admin can set it permanently
    if (!AppSession.isAdmin) return;
    await FirebaseFirestore.instance
        .collection(collection.adminSettingCollection)
        .doc("theme_setting")
        .set({
      "theme_index": index,
    });
  }
}
