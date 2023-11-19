import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class SelectedVendor extends StatelessWidget {
  final bool changeAble;
  const SelectedVendor({
    super.key,
    this.changeAble = true,
  });

  @override
  Widget build(BuildContext context) {
    BookController controller = Get.find();

    return Container(
      height: 96.0,
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        top: 6.0,
        bottom: 6.0,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(
              controller.selectedVendor!["photo_url"],
            ),
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  config.vendorString,
                  style: const TextStyle(
                    fontSize: 8.0,
                  ),
                ),
                Text(
                  "${controller.selectedVendor!["vendor_name"]}",
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                if (changeAble)
                  ElevatedButton(
                    onPressed: () {
                      Get.backUntil("$MainNavigationView");
                    },
                    child: const Text(
                      "Change",
                      style: TextStyle(
                        fontSize: 10.0,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
