import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class ReviewView extends StatelessWidget {
  final String vendorId;

  const ReviewView({
    super.key,
    required this.vendorId,
  });

  @override
  Widget build(BuildContext context) {
    return FireStream(
      stream: FirebaseFirestore.instance
          .collection(collection.vendorCollection)
          .doc(vendorId)
          .collection("reviews")
          .orderBy("date", descending: true)
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

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    width: double.infinity,
                    child: Wrap(
                      children: [
                        Container(
                          width: Get.width,
                          padding: const EdgeInsets.only(left: 15, right: 8),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 60),
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: NetworkImage(
                                    item["photo_url"],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 25),
                                  Text(
                                    item["name"],
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Text(
                                        Format.toDateString(item["date"]),
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey[400]),
                                      ),
                                      const SizedBox(width: 10),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  IgnorePointer(
                                    child: IconTheme(
                                      data: const IconThemeData(
                                        color: Colors.amber,
                                      ),
                                      child: RatingBar.builder(
                                        initialRating: item["rate"] ?? 0,
                                        minRating: item["rate"] ?? 0,
                                        maxRating: item["rate"] ?? 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemPadding: const EdgeInsets.symmetric(
                                          horizontal: 4.0,
                                        ),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        unratedColor: disabledColor,
                                        itemSize: 12.0,
                                        onRatingUpdate: (rating) {},
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    width: 200,
                                    child: Text(
                                      item["comment"],
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
