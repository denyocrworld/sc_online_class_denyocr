import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';
import '../controller/email_login_controller.dart';

class EmailLoginView extends StatefulWidget {
  const EmailLoginView({Key? key}) : super(key: key);

  Widget build(context, EmailLoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              TextFormField(
                initialValue: '',
                maxLength: 30,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.email,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your email address',
                ),
                onChanged: (value) {
                  controller.email = value;
                },
              ),
              TextFormField(
                initialValue: '',
                maxLength: 30,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.password,
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  helperText: 'Enter your password',
                ),
                onChanged: (value) {
                  controller.password = value;
                },
              ),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 42,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text("Login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.doLogin(),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 42,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.person),
                  label: const Text("Register"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[900],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.doRegister(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EmailLoginView> createState() => EmailLoginController();
}
