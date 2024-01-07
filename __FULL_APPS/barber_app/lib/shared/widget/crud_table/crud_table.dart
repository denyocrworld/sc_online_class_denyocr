import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class CrudTable extends StatefulWidget {
  final String title;
  final CollectionReference ref;
  final List<Map> tableFields;
  final List<Map> formFields;
  final double rowHeight;

  final bool disableAdd;
  final bool disableEdit;
  final bool disableDelete;

  const CrudTable({super.key, 
    required this.title,
    required this.ref,
    required this.tableFields,
    required this.formFields,
    this.rowHeight = 40.0,
    this.disableAdd = false,
    this.disableEdit = false,
    this.disableDelete = false,
  });

  @override
  _CrudTableState createState() => _CrudTableState();
}

class _CrudTableState extends State<CrudTable> {
  bool showForm = false;

  List<Widget> getHeaderUI() {
    List<Widget> widgets = [];
    var fields = widget.tableFields;
    for (var i = 0; i < fields.length; i++) {
      var field = fields[i];
      Widget w = Container(
        width: (field["width"] ?? 160.0) * 1.0,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              width: 1.0,
              color: Color(0xffD8DBE0),
            ),
          ),
        ),
        child: Center(
            child: Text(
          field["header"] ?? "",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        )),
      );
      if (field["expanded"] != null && field["expanded"] == true) {
        widgets.add(
          Expanded(
            child: w,
          ),
        );
      } else {
        widgets.add(w);
      }
    }

    Widget actionColumn = Container(
      width: 110.0,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 1.0,
            color: Color(0xffD8DBE0),
          ),
        ),
      ),
      child: const Center(
          child: Text(
        "Action",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      )),
    );
    widgets.add(actionColumn);

    return widgets;
  }

  List<Widget> getColumnUI(Map item) {
    List<Widget> widgets = [];

    print("getColumnUI:");
    print(item);

    var fields = widget.tableFields;
    for (var i = 0; i < fields.length; i++) {
      var field = fields[i];

      if (field["field_name"].toString().contains(".")) {
        var arr = field["field_name"].toString().split(".");
        item[field["field_name"]] = item[arr[0]][arr[1]];
      }

      if (field["type"] == "image") {
        Widget w = Container(
          width: (field["width"] ?? 140.0) * 1.0,
          height: widget.rowHeight,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1.0,
                color: Color(0xffD8DBE0),
              ),
            ),
          ),
          child: item[field["field_name"]] == null
              ? Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  height: (field["height"] ?? 140.0) * 1.0,
                  width: (field["width"] ?? 140.0) * 1.0,
                  child: Center(
                    child: Icon(
                      Icons.photo,
                      color: Colors.grey[600],
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: field["height"] ?? 140.0,
                        width: (field["width"] ?? 140.0) * 1.0,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              item[field["field_name"]],
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        );

        if (field["expanded"] != null && field["expanded"] == true) {
          widgets.add(
            Expanded(
              child: w,
            ),
          );
        } else {
          widgets.add(w);
        }
      } else if (field["type"] == "text") {
        var value = item[field["field_name"]];
        Widget w = Container(
          width: field["width"] ?? 200.0,
          height: widget.rowHeight,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1.0,
                color: Color(0xffD8DBE0),
              ),
            ),
          ),
          child: Text("$value"),
        );
        if (field["expanded"] != null && field["expanded"] == true) {
          widgets.add(
            Expanded(
              child: w,
            ),
          );
        } else {
          widgets.add(w);
        }
      } else if (field["type"] == "date") {
        var value = item[field["field_name"]];
        value = DateFormat("d MMM y kk:mm").format(value.toDate());

        Widget w = Container(
          width: field["width"] ?? 200.0,
          height: widget.rowHeight,
          padding: const EdgeInsets.all(10.0),
          decoration: const BoxDecoration(
            border: Border(
              right: BorderSide(
                width: 1.0,
                color: Color(0xffD8DBE0),
              ),
            ),
          ),
          child: Text("$value"),
        );
        if (field["expanded"] != null && field["expanded"] == true) {
          widgets.add(
            Expanded(
              child: w,
            ),
          );
        } else {
          widgets.add(w);
        }
      }
    }

    Widget actionColumn = Container(
      width: 110.0,
      height: widget.rowHeight,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            width: 1.0,
            color: Color(0xffD8DBE0),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (!widget.disableEdit)
            InkWell(
              onTap: () {
                RouterState.item = Map.from(item);
                showForm = true;
                setState(() {});
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.edit),
              ),
            ),
          if (!widget.disableDelete)
            InkWell(
              onTap: () {
                widget.ref.doc(item["id"]).delete();
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.delete),
              ),
            ),
        ],
      ),
    );
    widgets.add(actionColumn);
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    if (showForm) {
      return CrudForm(
        title: widget.title,
        ref: widget.ref,
        formFields: widget.formFields,
        afterSave: () {
          showForm = false;
          setState(() {});
        },
      );
    }

    return XCard(
      title: widget.title,
      actions: [
        if (!widget.disableAdd)
          ExButton(
            color: primaryColor,
            label: "Add",
            height: 36.0,
            onPressed: () {
              RouterState.item = {};
              showForm = true;
              setState(() {});
            },
          ),
      ],
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Color(0xffD8DBE0),
              ),
              bottom: BorderSide(
                width: 4.0,
                color: Color(0xffD8DBE0),
              ),
              left: BorderSide(
                width: 1.0,
                color: Color(0xffD8DBE0),
              ),
            ),
          ),
          child: Row(
            children: getHeaderUI(),
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            child: FireStream(
              stream: widget.ref.snapshots(),
              onItemBuild: (item, index, snapshot) {
                return Container(
                  decoration: const BoxDecoration(
                    // color: index % 2 == 0 ? Color(0xffF2F2F3) : Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 1.0,
                        color: Color(0xffD8DBE0),
                      ),
                      left: BorderSide(
                        width: 1.0,
                        color: Color(0xffD8DBE0),
                      ),
                      right: BorderSide(
                        width: 1.0,
                        color: Color(0xffD8DBE0),
                      ),
                    ),
                  ),
                  child: Row(
                    children: getColumnUI(item),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
