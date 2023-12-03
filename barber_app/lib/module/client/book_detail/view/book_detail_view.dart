import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class BookDetailView extends StatelessWidget {
  final controller = Get.put(BookDetailController());

  BookDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<BookDetailController>(
      builder: (_) {
        var product = Input.get("product_item");
        var total = 0.0;
        var bookingDate = (Input.get("booking_date") as DateTime);
        var bookingTime = Input.get("time") ?? "08:00";

        var bookingDateString = DateFormat("yyyy-MM-dd").format(bookingDate);
        bookingDate = DateTime.parse("$bookingDateString $bookingTime");

        var endDate = (Input.get("booking_date") as DateTime);

        if (config.setDuration) {
          var duration = Input.get("duration");
          endDate = bookingDate.add(Duration(hours: int.parse(duration)));

          total = double.parse("${Input.get("duration")}") *
              double.parse("${product["price"]}");
        }

        Input.set("start_date", bookingDate);
        Input.set("end_date", endDate);

        return Scaffold(
          appBar: AppBar(
            title: const Text("Confirm Your Order"),
          ),
          bottomNavigationBar: Container(
            height: 80.0,
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                BookController bookController = Get.find();
                bookController.onBook();
              },
              child: const Text("Order"),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Row(
                  children: [
                    Expanded(
                      child: SelectedVendor(
                        changeAble: false,
                      ),
                    ),
                    Expanded(
                      child: SelectedStaff(
                        changeAble: false,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Divider(),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: SelectedProduct(),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: SelectedDate(),
                      ),
                      Expanded(
                        child: SelectedTime(),
                      ),
                      Divider(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                if (config.multipleProducts) ...[
                  const Divider(),
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        "${product["qty"]} Day(s) x ${AppSession.currency}${product["price"]}",
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      const Spacer(),
                      Text(
                        "Total: ${AppSession.currency}$total",
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
                const Divider(),
                if (config.setDuration) ...[
                  Card(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Duration:",
                          ),
                          Text("${Input.get("duration")} Hours"),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            "Start At:",
                          ),
                          Text(
                            DateFormat("d MMM y kk:mm").format(bookingDate),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          const Text(
                            "End At:",
                          ),
                          Text(
                            DateFormat("d MMM y kk:mm").format(endDate),
                          ),
                          const Divider(),
                          const Text(
                            "Price/Hour:",
                          ),
                          Text("\$${product["price"]}/Hour(s)"),
                          const Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Text(
                                "Total:",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "\$$total",
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
                const SizedBox(
                  height: 10.0,
                ),
                if (config.setDuration) ...[],
              ],
            ),
          ),
        );
      },
    );
  }
}
