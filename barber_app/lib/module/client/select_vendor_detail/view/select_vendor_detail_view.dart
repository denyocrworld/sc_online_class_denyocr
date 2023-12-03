import 'dart:math';

import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class SelectVendorDetailView extends StatelessWidget {
  final dynamic item;
  final Function(Map<String, dynamic> item) onSelect;
  const SelectVendorDetailView(
      {super.key, required this.item, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectVendorDetailController>(
      init: SelectVendorDetailController(),
      builder: (controller) {
        controller.viewItem = item;
        if (controller.loading) return Container();
        if (!controller.visible) return Container();
        return Column(
          children: [
            InkWell(
              onTap: () async {
                await Get.to(VendorDetailView(
                  item: item,
                  onSelect: onSelect,
                ));
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo_url"],
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 4,
                          right: 4,
                          bottom: 4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.6),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "${(item["distance"] / 1000).toStringAsFixed(1)}Km",
                                  style: const TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Text(
                                "${item["vendor_name"]}",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            CircleAvatar(
                              radius: 12.0,
                              backgroundColor: Colors.black.withOpacity(0.4),
                              child: Icon(
                                Icons.favorite,
                                color: Random().nextInt(10) % 3 == 0
                                    ? Colors.yellow[700]
                                    : Colors.white,
                                size: 12.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Container(
                          padding: const EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.4),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: RatingBar.builder(
                            initialRating: item["rate"] * 1.0,
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
                            itemSize: 8.0,
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        const Text(
                          "08:00 - 21:00",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          "${item["address"]}",
                          style: const TextStyle(
                            fontSize: 10.0,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        );
      },
    );
  }
}
