import 'package:flutter/material.dart';
import 'package:auth_example/core.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
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
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 46.0,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.email),
                  label: const Text("Email login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[900],
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.doEmailLogin(),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 46.0,
                child: ElevatedButton.icon(
                  icon: Icon(MdiIcons.google),
                  label: const Text("Google login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.doGoogleLogin(),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 46.0,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.phone),
                  label: const Text("Phone login"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.doPhoneLogin(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
