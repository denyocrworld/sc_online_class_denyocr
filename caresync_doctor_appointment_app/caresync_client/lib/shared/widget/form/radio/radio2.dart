import 'package:flutter/material.dart';

class QRadioField2 extends StatefulWidget {
  final String label;
  final String? hint;
  final String? helper;
  final List<Map<String, dynamic>> items;
  final String? Function(List<Map<String, dynamic>> item)? validator;
  final Function(dynamic value, String? label) onChanged;
  final String? value;

  QRadioField2({
    Key? key,
    required this.label,
    required this.items,
    this.validator,
    this.hint,
    this.helper,
    this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<QRadioField2> createState() => _QRadioField2State();
}

class _QRadioField2State extends State<QRadioField2> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var item in widget.items) {
      items.add(Map.from(item));
      if (items.last["value"] == widget.value) {
        items.last["checked"] = true;
      }
    }
  }

  setAllItemsToFalse() {
    for (var item in items) {
      item["checked"] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12.0,
      ),
      child: FormField(
        initialValue: false,
        validator: (value) => widget.validator!(items),
        enabled: true,
        builder: (FormFieldState<bool> field) {
          return InputDecorator(
            decoration: InputDecoration(
              labelText: widget.label,
              errorText: field.errorText,
              border: InputBorder.none,
              helperText: widget.helper,
              hintText: widget.hint,
            ),
            // child: ListView.builder(
            //   shrinkWrap: true,
            //   itemCount: items.length,
            //   itemBuilder: (context, index) {
            //     var item = items[index];
            //     return RadioListTile(
            //       title: Text("${item["label"]}"),
            //       groupValue: true,
            //       value: item["checked"] ?? false,
            //       onChanged: (val) {
            //         setAllItemsToFalse();
            //         bool newValue = val ? false : true;
            //         items[index]["checked"] = newValue;
            //         field.didChange(true);
            //         setState(() {});

            //         String? label = items[index]["label"];
            //         int foundIndex =
            //             items.indexWhere((item) => item["label"] == label);
            //         dynamic value = items[foundIndex]["value"];
            //         widget.onChanged(value, label);
            //       },
            //     );
            //   },
            // ),
            child: Row(
              children: List.generate(
                items.length,
                (index) {
                  var item = items[index];
                  bool selected = item["checked"] == true;
                  return Expanded(
                    child: InkWell(
                      onTap: () {
                        setAllItemsToFalse();
                        item["checked"] = true;
                        setState(() {});
                      },
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: selected ? Color(0xff3670d3) : Colors.white,
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey[300]!,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            item["label"],
                            style: TextStyle(
                              fontSize: 12.0,
                              color: selected ? Colors.white : Colors.grey[600],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
