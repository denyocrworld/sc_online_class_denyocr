
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/employee_leave_form_view.dart';

class EmployeeLeaveFormController extends State<EmployeeLeaveFormView> {
    static late EmployeeLeaveFormController instance;
    late EmployeeLeaveFormView view;

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
        
    