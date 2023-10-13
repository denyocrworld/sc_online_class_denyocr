import 'package:doctor_appointment_app/core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VmStaffForm extends StatelessWidget {
  final VmEditVendorFormController controller = Get.find();

  VmStaffForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: ExButton(
            width: Get.width,
            label: "Add ${config.staffString}",
            height: 40,
            color: disabledColor,
            onPressed: () {
              Get.to(const VmAddStaffFormView());
            },
          ),
        ),
        Expanded(
          child: FireStream(
            stream: FirebaseFirestore.instance
                .collection(collection.vendorCollection)
                .doc(AppSession.userId)
                .collection("staffs")
                .snapshots(
                  includeMetadataChanges: true,
                ),
            onSnapshot: (querySnapshot) {
              return ListView.builder(
                itemCount: querySnapshot.docs.length,
                itemBuilder: (context, index) {
                  var item =
                      querySnapshot.docs[index].data() as Map<String, dynamic>;
                  var docId = querySnapshot.docs[index].id;
                  item["id"] = docId;

                  print(item);
                  return GestureDetector(
                    onTap: () {
                      print("HO");
                      Get.to(VmEditStaffFormView(
                        item: item,
                      ));
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            item['photo'] ??
                                "https://i.ibb.co/59BxMdr/image-not-available.png",
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                            loadingBuilder: (context, child, loadingProgress) {
                              return CustomImageBuilder.getImageLoadingBuilder(
                                  context, child, loadingProgress);
                            },
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 100,
                              width: 200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item['staff_name'],
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  const SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    item['description'] ?? "",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
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
      ],
    );
  }
}
