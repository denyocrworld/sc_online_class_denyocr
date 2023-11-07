import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_management/core.dart';
import '../view/http_example_view.dart';

class HttpExampleController extends State<HttpExampleView> {
  static late HttpExampleController instance;
  late HttpExampleView view;

  @override
  void initState() {
    instance = this;
    getUsers();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List items = [];
  bool loading = true;
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    await Future.delayed(const Duration(seconds: 2));
    Map obj = response.data;
    items = obj["data"];
    loading = false;
    setState(() {});
  }
}
