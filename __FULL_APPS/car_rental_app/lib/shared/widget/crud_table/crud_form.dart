import 'package:car_rental_app/core.dart';
import 'dart:developer';

import 'package:flutter/material.dart';

class CrudForm extends StatefulWidget {
  final String title;
  final CollectionReference ref;
  final List<Map> formFields;
  final Function afterSave;

  const CrudForm({
    super.key,
    required this.title,
    required this.ref,
    required this.formFields,
    required this.afterSave,
  });
  @override
  _CrudFormState createState() => _CrudFormState();
}

class _CrudFormState extends State<CrudForm> {
  List<Widget> getFormUI(Map item) {
    List<Widget> widgets = [];

    print("getColumnUI:");
    print(item);

    var fields = widget.formFields;
    for (var i = 0; i < fields.length; i++) {
      var field = fields[i];
      if (field["type"] == "image") {
        Widget w = QImagePicker(
          id: field["field_name"],
          label: field["header"],
          value: item[field["field_name"]],
          onChanged: (value) {},
        );
        widgets.add(w);
      } else if (field["type"] == "text") {
        Widget w = ExTextField(
          id: field["field_name"],
          label: field["header"],
          value: item[field["field_name"]],
        );
        widgets.add(w);
      } else if (field["type"] == "currency") {
        Widget w = ExTextField(
          id: field["field_name"],
          label: field["header"],
          value: item[field["field_name"]],
        );
        widgets.add(w);
      } else if (field["type"] == "longtext") {
        Widget w = ExTextArea(
          id: field["field_name"],
          label: field["header"],
          value: item[field["field_name"]],
        );
        widgets.add(w);
      }
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    Map item = RouterState.item;

    return XCard(
      title: "${item["id"] == null ? "Add" : "Edit"} ${widget.title}",
      actions: [
        ExButton(
            label: "Delete",
            height: 36.0,
            onPressed: () async {
              showLoading();

              await widget.ref.doc(item["id"]).delete();

              hideLoading();
              Get.back();
            }),
        const SizedBox(
          width: 10.0,
        ),
        ExButton(
          label: "Save",
          height: 36.0,
          onPressed: () async {
            Map<String, dynamic> values = {};
            for (var field in widget.formFields) {
              values[field['field_name']] = Input.get(field['field_name']);
            }

            log("values:");
            log(values.toString());

            if (item["id"] != null) {
              print("EDIT");
              await widget.ref.doc(item["id"]).update(values);
            } else {
              print("ADD");
              await widget.ref.add(values);
            }
            widget.afterSave();
          },
        ),
      ],
      children: [
        Column(
          children: getFormUI(item),
        )
      ],
    );
  }
}
