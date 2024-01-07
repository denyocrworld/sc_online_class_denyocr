import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 240.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1597933471507-1ca5765185d8?q=80&w=871&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    8.0,
                  ),
                ),
              ),
            ),
            Container(
              transform: Matrix4.translationValues(0.0, -30, 0),
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(30.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.0),
                  topRight: Radius.circular(24.0),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Sign in to access your account",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  QTextField(
                    label: "Email",
                    validator: Validator.email,
                    suffixIcon: Icons.email,
                    value: null,
                    onChanged: (value) {},
                  ),
                  QTextField(
                    label: "Password",
                    obscure: true,
                    validator: Validator.required,
                    suffixIcon: Icons.password,
                    value: null,
                    onChanged: (value) {},
                  ),
                  QOutlineButton(
                    label: "Sign in",
                    onPressed: () => controller.login(),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  InkWell(
                    onTap: () => Get.offAll(SignUpView()),
                    child: Text(
                      "Create account",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
