
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/user_course_list_view.dart';

class UserCourseListController extends State<UserCourseListView> {
    static late UserCourseListController instance;
    late UserCourseListView view;

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
        
    