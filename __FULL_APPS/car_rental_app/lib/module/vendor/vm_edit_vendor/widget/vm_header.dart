import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class VmHeader extends StatelessWidget {
  final Map<String, dynamic> item;

  const VmHeader({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        SizedBox(
          height: 250,
          width: Get.width,
          child: Image.network(
            item["photo_url"],
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${item["vendor_name"]}',
                style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                '${item["address"]}',
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Row(
                children: [
                  Card(
                    color: backgroundColor.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: IconTheme(
                        data: const IconThemeData(
                          color: Colors.amber,
                          size: 30,
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
                          itemSize: 20.0,
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
