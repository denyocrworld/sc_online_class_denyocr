import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class GaleryView extends StatelessWidget {
  final String vendorId;

  const GaleryView({
    super.key,
    required this.vendorId,
  });

  @override
  Widget build(BuildContext context) {
    return FireStream(
      stream: FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .doc(vendorId)
          .collection("galleries")
          .snapshots(
            includeMetadataChanges: true,
          ),
      onSnapshot: (querySnapshot) {
        return Wrap(
          children: List.generate(
            querySnapshot.docs.length,
            (index) {
              var item =
                  querySnapshot.docs[index].data() as Map<String, dynamic>;
              var docId = querySnapshot.docs[index].id;
              item["id"] = docId;

              return Image.network(
                item['image'] ?? DataSession.noPhotoUrl,
                height: 100,
                width: Get.width / 4,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  return CustomImageBuilder.getImageLoadingBuilder(
                      context, child, loadingProgress);
                },
              );
            },
          ),
        );
      },
    );
  }
}
