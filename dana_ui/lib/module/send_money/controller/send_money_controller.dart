
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/send_money_view.dart';

class SendMoneyController extends State<SendMoneyView> {
    static late SendMoneyController instance;
    late SendMoneyView view;

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
        
    