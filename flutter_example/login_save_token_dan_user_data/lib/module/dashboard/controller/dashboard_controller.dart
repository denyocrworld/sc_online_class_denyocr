
import 'package:flutter/material.dart';
import 'package:login_save_token_dan_user_data/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends State<DashboardView> {
    static late DashboardController instance;
    late DashboardView view;

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
        
    