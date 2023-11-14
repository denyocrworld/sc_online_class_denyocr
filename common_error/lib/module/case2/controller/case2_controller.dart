
import 'package:flutter/material.dart';
import 'package:common_error/core.dart';
import '../view/case2_view.dart';

class Case2Controller extends State<Case2View> {
    static late Case2Controller instance;
    late Case2View view;

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
        
    