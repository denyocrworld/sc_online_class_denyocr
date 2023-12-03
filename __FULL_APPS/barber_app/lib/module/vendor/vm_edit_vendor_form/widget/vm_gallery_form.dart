import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class VmGalleryForm extends StatelessWidget {
  final VmEditVendorFormController controller = Get.find();

  VmGalleryForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          child: ExButton(
            width: Get.width,
            label: "Add Photo to Gallery",
            height: 40,
            color: disabledColor,
            onPressed: () {
              Get.to(const VmAddGalleryPhotoFormView());
            },
          ),
        ),
        Expanded(
          child: FireStream(
            stream: FirebaseFirestore.instance
                .collection(collection.vendorCollection)
                .doc(AppSession.userId)
                .collection("galleries")
                .snapshots(
                  includeMetadataChanges: true,
                ),
            onSnapshot: (querySnapshot) {
              return Wrap(
                children: List.generate(
                  querySnapshot.docs.length,
                  (index) {
                    var item = querySnapshot.docs[index].data()
                        as Map<String, dynamic>;
                    var docId = querySnapshot.docs[index].id;
                    item["id"] = docId;

                    return Stack(
                      children: [
                        Image.network(
                          item['image'] ?? DataSession.noPhotoUrl,
                          height: 100,
                          width: Get.width / 4,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) {
                            return CustomImageBuilder.getImageLoadingBuilder(
                                context, child, loadingProgress);
                          },
                        ),
                        Positioned(
                          right: 10,
                          top: 10,
                          child: InkWell(
                            onTap: () async {
                              showLoading();
                              await FirebaseFirestore.instance
                                  .collection(collection.vendorCollection)
                                  .doc(AppSession.userId)
                                  .collection("galleries")
                                  .doc(docId)
                                  .delete();
                              hideLoading();
                            },
                            child: const Icon(
                              Icons.close,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
