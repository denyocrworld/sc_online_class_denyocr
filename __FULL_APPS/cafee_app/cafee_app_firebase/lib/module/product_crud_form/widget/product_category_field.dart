// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductCategoryField extends StatelessWidget {
  final Function(dynamic value) onChanged;
  const ProductCategoryField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: ProductCategoryService().getSnapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) return const Text("Error");
        if (snapshot.data == null) return Container();
        if (snapshot.data!.docs.isEmpty) {
          return const Text("No Data");
        }
        final items = snapshot.data!.docs.toList();
        return QDropdownField(
          label: "Product category",
          validator: Validator.required,
          items: items.map((e) {
            var data = e.data() as Map<String, dynamic>;
            return {
              "label": data["product_category_name"],
              "value": data["product_category_name"],
            };
          }).toList(),
          // value: value,
          onChanged: (value, label) {
            onChanged(value);
          },
        );
      },
    );
  }
}
