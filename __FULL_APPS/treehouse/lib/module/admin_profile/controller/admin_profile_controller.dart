
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/admin_profile_view.dart';

class AdminProfileController extends State<AdminProfileView> {
    static late AdminProfileController instance;
    late AdminProfileView view;

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
        
    