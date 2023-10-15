
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/request_money_view.dart';

class RequestMoneyController extends State<RequestMoneyView> {
    static late RequestMoneyController instance;
    late RequestMoneyView view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    