import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class RateView extends StatelessWidget {
  final Map<String, dynamic> item;
  final String orderId;
  final bool rateClient;

  const RateView({
    super.key,
    required this.item,
    required this.orderId,
    this.rateClient = false,
  });

  @override
  Widget build(BuildContext context) {
    var name = rateClient ? item["user_name"] : item["vendor_name"];
    return GetBuilder<RateController>(
      init: RateController(),
      builder: (controller) {
        controller.view = this;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Rate"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  FireStream(
                    stream: FirebaseFirestore.instance
                        .collection(collection.userRatingCollection)
                        .where("order_id", isEqualTo: item["id"])
                        .snapshots(),
                    onSnapshot: (snapshot) {
                      bool rated = snapshot.docs.isNotEmpty;
                      double rate = 0.0;
                      if (rated) {
                        var d =
                            snapshot.docs.first.data() as Map<String, dynamic>;
                        rate = d["rate"];
                      }
                      return Column(
                        children: [
                          Card(
                            color: secondaryColor,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: IconTheme(
                                data: const IconThemeData(
                                  color: Colors.amber,
                                ),
                                child: RatingBar.builder(
                                  initialRating: rated ? rate : controller.rate,
                                  minRating: 1,
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
                                  itemSize: 30.0,
                                  onRatingUpdate: (rating) {
                                    controller.rate = rating;
                                  },
                                ),
                              ),
                            ),
                          ),
                          const ExTextArea(
                            id: "memo",
                            label: "Memo",
                          ),
                          if (rated)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExButton(
                                label: "Already Rated",
                                width: Get.width,
                                onPressed: () {},
                              ),
                            ),
                          if (!rated)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ExButton(
                                label: "Rate",
                                width: Get.width,
                                onPressed: () => controller.rateVendor(item),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
