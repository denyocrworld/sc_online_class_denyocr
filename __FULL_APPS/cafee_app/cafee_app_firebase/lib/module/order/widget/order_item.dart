// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class OrderItem extends StatelessWidget {
  final int index;
  final Map item;
  const OrderItem({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.parse(item["date"]);
    String dMMMy = DateFormat("EEEE, d MMM y").format(date);
    String time = DateFormat("kk:mm").format(date);

    bool isExpense = item["type"] == "Expense";

    Color color = successColor;
    if (isExpense) {
      color = dangerColor;
    }

    IconData icon = Icons.arrow_circle_right_outlined;
    if (isExpense) {
      icon = Icons.arrow_circle_left_outlined;
    }

    String nowf = DateFormat("dd-MM-yyyy").format(DateTime.now());
    String datef = DateFormat("dd-MM-yyyy").format(date);
    bool isToday = datef == nowf;

    String nowf2 = DateFormat("dd-MM-yyyy")
        .format(DateTime.now().subtract(Duration(days: 1)));
    String datef2 = DateFormat("dd-MM-yyyy").format(date);
    bool isYesterday = datef2 == nowf2;

    // kode untuk check tanggal sebelum index saat ini, sama atau tidak
    // kalau sama, atur isVisible jadi false
    // kalau beda, atur isVisible jadi true
    // kalau index-nya sama dengan 0, selalu atur isVisible jadi true
    bool isVisible = false;
    if (index > 0) {
      var controller = GetIt.I<OrderController>();
      DateTime currentIndexDate = DateTime.parse(item["date"]);

      String beforeIndexDateString = controller.state.items[index - 1]["date"];
      DateTime beforeIndexDate = DateTime.parse(beforeIndexDateString);

      String s1 = DateFormat("dd-MM-y").format(currentIndexDate);
      String s2 = DateFormat("dd-MM-y").format(beforeIndexDate);
      isVisible = s1 == s2 ? false : true;

      print(index);
      print(beforeIndexDate);
      print(currentIndexDate);
    }

    print("isToday: $isToday");
    print("isVisible: $isVisible");
    print("---");

    if (index == 0) {
      isVisible = true;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (index > 0 && isVisible)
          const SizedBox(
            height: 20.0,
          ),
        if (isToday && isVisible)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Today",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff426586),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        if (isYesterday && isVisible)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Yesterday",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff426586),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        if (!isToday && !isYesterday && isVisible)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$dMMMy",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff426586),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        Row(
          children: [
            Container(
              width: 54,
              child: Text(
                "$time",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ),
            CircleAvatar(
              backgroundColor: color,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 6.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "#${item["id"]}",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff426586),
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "${item["type"]}",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff426586),
                    ),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    "${item["date"]}",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xff426586),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "${NumberFormat().format(item["total"])}",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff426586),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Text(
                  item["item_count"] != null
                      ? "${item["item_count"]} Items"
                      : "-",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xff426586),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
      ],
    );
  }
}
