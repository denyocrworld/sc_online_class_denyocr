
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/welcome_view.dart';

class WelcomeController extends State<WelcomeView> {
    static late WelcomeController instance;
    late WelcomeView view;

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
        
    