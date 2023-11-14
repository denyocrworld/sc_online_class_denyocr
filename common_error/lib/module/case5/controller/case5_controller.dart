
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../view/case5_view.dart';

class Case5Controller extends State<Case5View> {
    static late Case5Controller instance;
    late Case5View view;

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
        
    