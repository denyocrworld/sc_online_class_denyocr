import 'package:barber_app/core.dart';
import 'package:flutter/material.dart';

Map<String, ExChatFieldState> exChatFieldInstance = {};

class ExChatField extends StatefulWidget {
  final String id;
  final String value;
  final String hintText;
  final TextFieldType? textFieldType;
  final TextInputType? keyboardType;
  final bool enabled;
  final double? height;

  final Function(String text)? onChanged;
  final Function(String text)? onSubmitted;

  const ExChatField({
    super.key,
    required this.id,
    this.value = "",
    this.hintText = "",
    this.textFieldType = TextFieldType.normal,
    this.keyboardType,
    this.onChanged,
    this.onSubmitted,
    this.enabled = true,
    this.height,
  });

  @override
  ExChatFieldState createState() => ExChatFieldState();
}

class ExChatFieldState extends State<ExChatField> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    exChatFieldInstance[widget.id] = this;
    controller.text = widget.value;
    textFieldController[widget.id] = controller;
    Input.set(widget.id, widget.value);
  }

  setValue(String newValue) {
    controller.text = newValue;
    Input.set(widget.id, newValue);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: disabledColor,
        border: Border.all(
          width: 0.0,
          color: disabledColor!,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
      ),
      child: TextField(
        enabled: widget.enabled,
        keyboardType: widget.keyboardType,
        maxLines: widget.keyboardType == TextInputType.multiline ? 5 : 1,
        style: TextStyle(
          color: widget.enabled ? textColor : textColor.withOpacity(0.4),
        ),
        controller: controller,
        obscureText:
            widget.textFieldType == TextFieldType.password ? true : false,
        decoration: InputDecoration.collapsed(
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: textColor.withOpacity(0.3),
          ),
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
    );
  }
}
