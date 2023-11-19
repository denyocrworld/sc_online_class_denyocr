
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../view/case6_view.dart';

class Case6Controller extends State<Case6View> {
    static late Case6Controller instance;
    late Case6View view;

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
        
    