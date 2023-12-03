import 'package:doctor_appointment_app/core.dart';
import 'package:flutter/material.dart';

class ExScaffoldPicker extends StatefulWidget {
  final String id;
  final String label;
  final String? value;
  final String valueField;
  final String displayField;
  final Stream<QuerySnapshot> stream;
  final Function onSelected;

  const ExScaffoldPicker({
    super.key,
    required this.id,
    required this.label,
    required this.valueField,
    required this.displayField,
    required this.stream,
    required this.onSelected,
    this.value,
  });

  @override
  State<ExScaffoldPicker> createState() => _ExScaffoldPickerState();
}

class _ExScaffoldPickerState extends State<ExScaffoldPicker> {
  @override
  void initState() {
    super.initState();
    Input.set(widget.id, null);
    Input.set("${widget.id}_item", null);
  }

  getPopupScaffold() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FireStream(
          stream: widget.stream,
          onSnapshot: (snapshot) {
            List<Map<String, dynamic>> items = [];
            print("items: $items");

            for (var doc in snapshot.docs) {
              var item = doc.data() as Map<String, dynamic>;
              item["id"] = doc.id;

              print(item);
              print("---");

              var newItem = item;
              newItem["label"] = item[widget.displayField];
              newItem["value"] = item[widget.displayField];
              items.add(newItem);
            }

            return ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  var item = items[index];
                  return InkWell(
                    onTap: () {
                      items[index]["qty"] = 1;
                      Input.set(widget.id, item["id"]);
                      Input.set("${widget.id}_item", items[index]);
                      Get.back();
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            Image.network(
                              item["image"] ??
                                  "https://i.ibb.co/F7J1gZj/no-image.jpg",
                              width: 60.0,
                              height: 60.0,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(item["label"]),
                                  const SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    item["description"],
                                    style: const TextStyle(
                                      fontSize: 10.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "${AppSession.currency}${item["price"]}",
                              style: const TextStyle(
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (Input.get("${widget.id}_item") != null) {
      var item = Input.get("${widget.id}_item");
      var qty = item["qty"] ?? 1;
      var price = item["price"];
      var total = qty * double.parse(price);

      return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.network(
                      item["image"] ?? "https://i.ibb.co/F7J1gZj/no-image.jpg",
                      width: 60.0,
                      height: 60.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(item["label"]),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            item["description"],
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      "${AppSession.currency}${item["price"]}",
                      style: const TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
                if (config.multipleProducts) ...[
                  const Divider(),
                  Row(
                    children: [
                      InkWell(
                        onTap: () async {
                          await Get.to(getPopupScaffold());
                          setState(() {});
                        },
                        child: const Text("Change"),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          if (qty - 1 == 0) return;
                          qty--;
                          item["qty"] = qty;
                          Input.set("${widget.id}_item", item);
                          setState(() {});
                        },
                        child: const CircleAvatar(
                          child: Icon(Icons.remove),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "$qty Day",
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      InkWell(
                        onTap: () {
                          qty++;
                          item["qty"] = qty;
                          Input.set("${widget.id}_item", item);
                          setState(() {});
                        },
                        child: const CircleAvatar(
                          child: Icon(Icons.add),
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
              ],
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ExButton(
        label: "Select ${config.productString}",
        onPressed: () async {
          await Get.to(getPopupScaffold());
          setState(() {});
        },
      ),
    );
  }
}
