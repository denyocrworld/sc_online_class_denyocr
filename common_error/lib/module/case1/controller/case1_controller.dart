
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../view/case1_view.dart';

class Case1Controller extends State<Case1View> {
    static late Case1Controller instance;
    late Case1View view;

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
        
    