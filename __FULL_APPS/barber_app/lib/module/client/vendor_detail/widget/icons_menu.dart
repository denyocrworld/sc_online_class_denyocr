import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class IconsMenu extends StatelessWidget {
  final Map<String, dynamic> item;

  const IconsMenu({super.key, 
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
        left: 30.0,
        right: 30.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (item["website"].toString().isNotEmpty) ...[
            InkWell(
              onTap: () async {
                await launchURL(item["website"]);
              },
              child: Column(
                children: [
                  Image.network(
                    'https://i.ibb.co/9NsbdX4/logo-internet.png',
                    height: 40,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Website',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
          InkWell(
            onTap: () async {
              var phone = item["phone"];
              await launchURL("tel:$phone");
            },
            child: Column(
              children: [
                Image.network(
                  'https://i.ibb.co/7vwFkFj/logo-phone.png',
                  height: 40,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Call Now',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              var latitude = item["latitude"];
              var longitude = item["longitude"];
              MapsLauncher.launchCoordinates(latitude, longitude);
            },
            child: Column(
              children: [
                Image.network(
                  'https://i.ibb.co/BVzHV3p/logo-direction.png',
                  height: 40,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Direction',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              // await launchURL("$item['share']");
              showSnackbar(message: "Under Development");
            },
            child: Column(
              children: [
                Image.network(
                  'https://i.ibb.co/k2pyBGt/logo-share.png',
                  height: 40,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Share',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
