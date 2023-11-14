import 'package:flutter/material.dart';
import 'package:null_safety_dan_if_statement/core.dart';
import '../view/login_view.dart';

class LoginController extends State<LoginView> {
  static late LoginController instance;
  late LoginView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int counter = 0;
  Map item = {};
  doSave() {
    counter++;
    setState(() {});
  }
}
