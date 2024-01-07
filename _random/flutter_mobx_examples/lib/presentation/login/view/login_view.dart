
import 'package:flutter_mobx_examples/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => LoginViewState();
}

class LoginViewState extends State<LoginView> implements ViewBase {
  LoginController controller = GetIt.I<LoginController>();

  @override
  void initState() {
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
    super.initState();
  }

  @override
  Widget build(context) => Observer(builder: (_) => buildView(context));

  @override
  Widget buildView(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "${controller.counter}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () => controller.increment(),
                child: const Text("Update"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
    
    