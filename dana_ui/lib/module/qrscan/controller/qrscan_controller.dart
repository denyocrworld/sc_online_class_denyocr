
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/qrscan_view.dart';

class QrscanController extends State<QrscanView> {
    static late QrscanController instance;
    late QrscanView view;

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
        
    