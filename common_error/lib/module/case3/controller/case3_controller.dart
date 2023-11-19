
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../view/case3_view.dart';

class Case3Controller extends State<Case3View> {
    static late Case3Controller instance;
    late Case3View view;

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
        
    