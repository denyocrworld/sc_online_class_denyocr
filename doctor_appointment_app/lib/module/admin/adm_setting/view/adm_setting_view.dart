import 'package:doctor_appointment_app/core.dart';

import 'package:flutter/material.dart';

class AdmSettingView extends StatelessWidget {
  final controller = Get.put(AdmSettingController());

  AdmSettingView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<AdmSettingController>(
      builder: (_) {
        return WillPopScope(
          onWillPop: () async {
            await AdminSettingApi.loadAppSetting();
            return Future.value(true);
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text("App Setting"),
            ),
            body: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: FireStreamDocument(
                  stream: FirebaseFirestore.instance
                      .collection(collection.adminSettingCollection)
                      .doc("app_setting")
                      .snapshots(),
                  onSnapshot: (snapshot) {
                    var item = snapshot.data() as Map<String, dynamic>;
                    return ListView.builder(
                      itemCount: AdminSettingApi.availableConfigs.length,
                      itemBuilder: (context, index) {
                        var itemConfig =
                            AdminSettingApi.availableConfigs[index];

                        bool value = false;
                        value = (item).containsKey(itemConfig["field_name"])
                            ? item[itemConfig["field_name"]] ?? false
                            : false;

                        return Card(
                          elevation: 0.4,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(itemConfig["label"]),
                                const Spacer(),
                                if (itemConfig["readonly"] != true)
                                  Switch(
                                    value: value,
                                    onChanged: (value) {
                                      FirebaseFirestore.instance
                                          .collection(
                                              collection.adminSettingCollection)
                                          .doc("app_setting")
                                          .update({
                                        itemConfig["field_name"]: value,
                                      });
                                    },
                                  ),
                                if (itemConfig["readonly"] == true)
                                  Switch(
                                    value: value,
                                    activeColor: Colors.grey[800],
                                    onChanged: (value) {},
                                  ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
