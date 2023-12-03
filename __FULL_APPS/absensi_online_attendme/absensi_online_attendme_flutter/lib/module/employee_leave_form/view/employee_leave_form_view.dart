import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/employee_leave_form_controller.dart';

class EmployeeLeaveFormView extends StatefulWidget {
  const EmployeeLeaveFormView({Key? key}) : super(key: key);

  Widget build(context, EmployeeLeaveFormController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("EmployeeLeaveForm"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: LocalDataService.prefs!.getString("name"),
                maxLength: 20,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: "What's your name?",
                ),
                onChanged: (value) {
                  LocalDataService.prefs!.setString("name", value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmployeeLeaveFormView> createState() => EmployeeLeaveFormController();
}
