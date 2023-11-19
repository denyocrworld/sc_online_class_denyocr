
import 'package:flutter/material.dart';
import 'package:dana_ui/core.dart';
import '../view/profile_business_view.dart';

class ProfileBusinessController extends State<ProfileBusinessView> {
    static late ProfileBusinessController instance;
    late ProfileBusinessView view;

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
        
    