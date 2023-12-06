import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  //Flutter

  //Java

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = LoginController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    controller.initState();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<LoginController, LoginState>(
        listener: (context, state) {},
        child: BlocBuilder<LoginController, LoginState>(
          builder: (context, state) {
            final bloc = context.read<LoginController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    LoginController controller,
    LoginState state,
  ) {
    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          transform: Matrix4.translationValues(0.0, 10, 0),
                          child: Icon(
                            MdiIcons.cashRegister,
                            size: 64.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Pos",
                          style: GoogleFonts.blackOpsOne(
                            fontSize: 42.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          transform: Matrix4.translationValues(0.0, -10, 0),
                          child: Text(
                            "Restaurant",
                            style: GoogleFonts.blackOpsOne(
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                      .animate()
                      .moveY(
                        duration: 800.ms,
                      )
                      .fadeIn(
                        duration: 800.ms,
                      ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  QTextField(
                    label: "Email",
                    validator: Validator.email,
                    suffixIcon: Icons.email,
                    value: controller.state.email,
                    onChanged: (value) {
                      controller.state.email = value;
                      DBService.set("email", value);
                    },
                  )
                      .animate()
                      .move(
                        duration: 800.ms,
                      )
                      .fadeIn(
                        duration: 800.ms,
                      ),
                  QTextField(
                    label: "Password",
                    obscure: true,
                    validator: Validator.required,
                    suffixIcon: Icons.password,
                    value: state.password,
                    onChanged: (value) {
                      controller.state.password = value;
                      DBService.set("password", value);
                    },
                  )
                      .animate()
                      .move(
                        duration: 800.ms,
                      )
                      .fadeIn(
                        duration: 800.ms,
                      ),
                  QButton(
                    label: "Login",
                    onPressed: () async {
                      bool isValid = formKey.currentState!.validate();
                      if (!isValid) {
                        return;
                      }

                      showLoading();
                      bool isLoggedIn = await controller.loginByEmail();
                      hideLoading();

                      if (!isLoggedIn) {
                        snackbarDanger(message: "Wrong email or password!");
                        return;
                      }
                      Get.offAll(MainNavigationView());
                    },
                  )
                      .animate()
                      .moveY(
                        begin: 100,
                        duration: 800.ms,
                      )
                      .fadeIn(
                        duration: 800.ms,
                      ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: QButton(
                          label: "Google",
                          color: dangerColor,
                          onPressed: () async {
                            showLoading();
                            bool isLoggedIn = await controller.loginByGoogle();
                            hideLoading();

                            if (!isLoggedIn) {
                              snackbarDanger(
                                  message:
                                      "Failed to login with google account");
                              return;
                            }
                            Get.offAll(MainNavigationView());
                          },
                        ),
                      )
                          .animate()
                          .moveY(
                            begin: 100,
                            duration: 800.ms,
                          )
                          .fadeIn(
                            duration: 800.ms,
                          ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Expanded(
                        child: QButton(
                          label: "Guest",
                          color: infoColor,
                          onPressed: () async {
                            showLoading();
                            bool isLoggedIn =
                                await controller.loginAnonymously();
                            hideLoading();

                            if (!isLoggedIn) {
                              snackbarDanger(
                                  message: "Failed to login anonympusly");
                              return;
                            }
                            Get.offAll(MainNavigationView());
                          },
                        ),
                      )
                          .animate()
                          .moveY(
                            begin: 100,
                            duration: 800.ms,
                          )
                          .fadeIn(
                            duration: 800.ms,
                          ),
                    ],
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () => Get.offAll(RegisterView()),
                      child: Text(
                        "Create new account",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
