import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/transaction_history_in_progress_controller.dart';

class TransactionHistoryInProgressView extends StatefulWidget {
  const TransactionHistoryInProgressView({Key? key}) : super(key: key);

  Widget build(context, TransactionHistoryInProgressController controller) {
    controller.view = this;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          MdiIcons.stickerEmoji,
          size: 128.0,
          color: primaryColor,
        ),
        const SizedBox(
          height: 12.0,
        ),
        const Text(
          "There's nothing here yet",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          "You have completed everything!",
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.grey[600],
          ),
        ),
      ],
    );

    return ListView.builder(
      itemCount: 3,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey[200],
              backgroundImage: const NetworkImage(
                "https://i.ibb.co/QrTHd59/woman.jpg",
              ),
            ),
            title: const Text("Jessica Doe"),
            subtitle: const Text("Programmer"),
          ),
        );
      },
    );
  }

  @override
  State<TransactionHistoryInProgressView> createState() =>
      TransactionHistoryInProgressController();
}
