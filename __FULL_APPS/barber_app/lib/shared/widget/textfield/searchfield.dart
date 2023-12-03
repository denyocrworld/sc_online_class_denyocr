import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

class ExSearchField extends StatefulWidget {
  final String id;
  final String label;
  final String? value;
  final String hintText;
  final TextFieldType textFieldType;
  final int? maxLines;
  final bool? enabled;
  final Color? backgroundColor;
  final Color? borderColor;

  final Function(String text)? onChanged;
  final Function(String text)? onSubmitted;

  const ExSearchField({
    super.key,
    required this.id,
    required this.label,
    this.value = "",
    this.hintText = "",
    this.textFieldType = TextFieldType.normal,
    this.onChanged,
    this.onSubmitted,
    this.maxLines,
    this.enabled = true,
    this.backgroundColor,
    this.borderColor,
  });

  @override
  _ExSearchFieldState createState() => _ExSearchFieldState();
}

class _ExSearchFieldState extends State<ExSearchField>
    implements InputControlState {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = widget.value ?? "";
    textFieldController[widget.id] = controller;
    Input.set(widget.id, widget.value);
    Input.inputController[widget.id] = this;
  }

  @override
  setValue(value) {
    controller.text = value;
    Input.set(widget.id, value);
  }

  @override
  resetValue() {
    controller.text = "";
    Input.set(widget.id, "");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12.0,
          ),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            border: Border.all(
              width: 1.0,
              color: widget.borderColor ?? Colors.grey[300]!,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: TextField(
            controller: controller,
            maxLines: widget.textFieldType == TextFieldType.password
                ? 1
                : widget.maxLines,
            obscureText:
                widget.textFieldType == TextFieldType.password ? true : false,
            readOnly: widget.enabled! ? false : true,
            decoration: InputDecoration(
              hintText: widget.hintText,
              icon: const Icon(Icons.search),
              border: InputBorder.none,
            ),
            onChanged: (text) {
              Input.set(widget.id, text);
              if (widget.onChanged != null) widget.onChanged!(text);
            },
            onSubmitted: (text) {
              Input.set(widget.id, text);
              if (widget.onSubmitted != null) widget.onSubmitted!(text);
            },
          ),
        ),
      ],
    );
  }
}
