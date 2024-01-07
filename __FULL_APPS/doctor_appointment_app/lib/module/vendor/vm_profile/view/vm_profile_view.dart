import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class VmProfileView extends StatelessWidget {
  final controller = Get.put(VmProfileController());

  VmProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<VmProfileController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Profile"),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 12.0,
                  bottom: 12.0,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(AdmThemeView());
                  },
                  child: Text(
                    "${colorPalettes.length} Themes",
                    style: const TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: InkWell(
                  onTap: () => controller.doLogout(),
                  child: Center(
                    child: Text(
                      "Logout",
                      style: TextStyle(
                        color: dangerColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: FireStreamDocument(
              stream: FirebaseFirestore.instance
                  .collection(collection.userDataCollection)
                  .doc(AppSession.userId)
                  .snapshots(
                    includeMetadataChanges: true,
                  ),
              onSnapshot: (documentSnapshot) {
                var data = documentSnapshot.data() as Map<String, dynamic>;
                var item = data["profile"];
                print(item);

                return Padding(
                  padding: mediumPadding,
                  child: Column(
                    children: [
                      if (item["photo_url"] != null)
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: NetworkImage(
                            item["photo_url"],
                          ),
                        ),
                      if (item["photo_url"] == null)
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor: primaryColor,
                          child: Text(
                            item["display_name"] != null
                                ? item["display_name"][0]
                                : "G",
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      ExTextField(
                        id: "full_name",
                        label: "Full Name",
                        hintText: "Your full name",
                        enabled: false,
                        value: item["display_name"] ?? "Guest",
                      ),
                      ExTextField(
                        id: "email",
                        label: "Email",
                        hintText: "Your email",
                        enabled: false,
                        value: item["email"] ?? "guest@world.com",
                      ),
                      ExTextField(
                        id: "phone",
                        label: "Phone",
                        hintText: "Phone Number",
                        value: item["phone"] ?? "-",
                        onChanged: (text) {
                          FirebaseFirestore.instance
                              .collection(collection.userDataCollection)
                              .doc(AppSession.userId)
                              .update({
                            "profile": {
                              "phone": text,
                            }
                          });
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
