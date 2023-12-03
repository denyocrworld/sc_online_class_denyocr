import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class ExStreamRadio extends StatefulWidget {
  final String id;
  final String label;
  final String value;
  final String valueField;
  final String displayField;
  final Stream<QuerySnapshot> stream;
  final Function onSelected;

  const ExStreamRadio({
    super.key,
    required this.id,
    required this.label,
    required this.value,
    required this.valueField,
    required this.displayField,
    required this.stream,
    required this.onSelected,
  });

  @override
  State<ExStreamRadio> createState() => _ExStreamRadioState();
}

class _ExStreamRadioState extends State<ExStreamRadio> {
  @override
  void initState() {
    super.initState();
    Input.set(widget.id, null);
    Input.set("${widget.id}_item", null);
  }

  @override
  Widget build(BuildContext context) {
    return FireStream(
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

        return ExRadio(
          id: widget.id,
          label: widget.label,
          items: items,
          onChanged: (value) {
            // print("Selected Value $value");
            // items[index]["qty"] = 1;
            // Input.set(widget.id, items[index]["id"]);
            // Input.set("${widget.id}_item", items[index]);
          },
        );
      },
    );
  }
}
