import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final String vendorId;

  const ProductView({
    super.key,
    required this.vendorId,
  });

  @override
  Widget build(BuildContext context) {
    return FireStream(
      stream: FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .doc(vendorId)
          .collection("products")
          .snapshots(
            includeMetadataChanges: true,
          ),
      onSnapshot: (querySnapshot) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: querySnapshot.docs.length,
          itemBuilder: (context, index) {
            var item = querySnapshot.docs[index].data() as Map<String, dynamic>;
            var docId = querySnapshot.docs[index].id;
            item["id"] = docId;

            return GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Image.network(
                      item['image'] ??
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item['title'],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15)),
                            const SizedBox(
                              height: 6.0,
                            ),
                            if (item['gender'] == "All") ...[
                              Row(
                                children: [
                                  Image.network(
                                    "https://i.ibb.co/7g0d0L6/male.png",
                                    width: 10.0,
                                  ),
                                  Image.network(
                                    "https://i.ibb.co/HnbvyJ0/female.png",
                                    width: 10.0,
                                  ),
                                ],
                              ),
                            ],
                            if (item['gender'] == "Male") ...[
                              Image.network(
                                "https://i.ibb.co/7g0d0L6/male.png",
                                width: 10.0,
                              ),
                            ],
                            if (item['gender'] == "Female") ...[
                              Image.network(
                                "https://i.ibb.co/HnbvyJ0/female.png",
                                width: 10.0,
                              ),
                            ],
                            const SizedBox(
                              height: 6.0,
                            ),
                            Expanded(
                              child: Text(
                                item['description'],
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.0,
                                ),
                              ),
                            ),
                            Text(
                              AppSession.currency + item['price'],
                              style: const TextStyle(color: Colors.white),
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
    );
  }
}
