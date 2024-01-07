import 'dart:developer';

import 'package:car_rental_app/core.dart';
import 'package:flutter/material.dart';

class ExStreamCheckbox extends StatefulWidget {
  final String id;
  final String? ownerId;
  final String label;
  final String? value;
  final String valueField;
  final String displayField;
  final Stream<QuerySnapshot> stream;
  final Function? onSelected;

  final DocumentReference? valueRef;
  final String? valueKey;

  const ExStreamCheckbox({
    super.key,
    required this.id,
    required this.label,
    required this.valueField,
    required this.displayField,
    required this.stream,
    this.ownerId,
    this.onSelected,
    this.valueRef,
    this.valueKey,
    this.value,
  });

  @override
  State<ExStreamCheckbox> createState() => _ExStreamCheckboxState();
}

class _ExStreamCheckboxState extends State<ExStreamCheckbox> {
  bool loading = true;
  List products = [];
  List checkedProducts = [];

  @override
  void initState() {
    super.initState();
    Input.set(widget.id, null);
    Input.set("${widget.id}_item", null);
    loadData();
  }

  void loadData() async {
    var ps = await FirebaseFirestore.instance
        .collection(collection.vendorCollection)
        .doc(AppSession.userId)
        .collection("products")
        .get();
    products = ps.toList();

    for (var product in products) {
      product["label"] = product[widget.displayField];
      product["value"] = product[widget.displayField];
    }

    if (widget.valueRef != null) {
      var s = await widget.valueRef!.get();
      var d = s.data() as Map<String, dynamic>;
      if (d.isEmpty) {
        checkedProducts = d[widget.valueKey] ?? [];
        checkedProducts = checkedProducts.toSet().toList();
      }
    }

    Input.set(widget.id, checkedProducts);
    // await Future.delayed(Duration(seconds: 1));
    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    log("checkedProducts: $checkedProducts");

    if (loading) {
      return const CircularProgressIndicator();
    }

    return ExCheckbox(
      id: widget.id,
      label: widget.label,
      items: products,
      selectedValues: checkedProducts,
      onChanged: (isChecked, itemId, index) async {
        print("Selected Value $itemId");
        products[index]["qty"] = 1;

        if (isChecked) {
          checkedProducts.add(products[index]["id"]);
        } else {
          checkedProducts.remove(products[index]["id"]);
        }
        checkedProducts = checkedProducts.toSet().toList();

        log("checkedProducts: isChecked -> $isChecked");
        log("checkedProducts: value -> $itemId");
        log("checkedProducts: $checkedProducts");

        Input.set(widget.id, checkedProducts);

        setState(() {});
      },
    );
  }
}
