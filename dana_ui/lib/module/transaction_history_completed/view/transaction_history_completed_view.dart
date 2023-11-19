import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/transaction_history_completed_controller.dart';

class TransactionHistoryCompletedView extends StatefulWidget {
  const TransactionHistoryCompletedView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryCompletedController controller) {
    controller.view = this;
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(12.0),
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 12.0,
          ),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(
                6.0,
              ),
            ),
          ),
          child: const Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EMoney Statement",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Click here to see your financial statement in EMoney",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.wallet,
                size: 32.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(20.0),
            itemCount: controller.items.length,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = controller.items[index];
              var formatter = NumberFormat.decimalPattern();
              print(item["amount"]);
              return Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          item["image"],
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item["title"],
                              style: const TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Text(
                              item["date"],
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "Rp${formatter.format(double.parse(item["amount"].toString()))},-",
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  State<TransactionHistoryCompletedView> createState() =>
      TransactionHistoryCompletedController();
}
