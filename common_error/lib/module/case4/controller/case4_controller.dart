
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../view/case4_view.dart';

class Case4Controller extends State<Case4View> {
    static late Case4Controller instance;
    late Case4View view;

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
        
    