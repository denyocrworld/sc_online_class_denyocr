import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_ui/service/db_service/db_service.dart';
import 'package:hyper_ui/shared/util/validator/validator.dart';
import 'package:hyper_ui/shared/widget/form/button/button.dart';
import 'package:hyper_ui/shared/widget/form/textfield/text_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../controller/login_controller.dart';
import '../state/login_state.dart';
import 'package:get_it/get_it.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginController controller = LoginController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<LoginController>()) {
      GetIt.I.unregister<LoginController>();
    }
    GetIt.I.registerSingleton(controller);
    controller.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => controller.ready(),
    );
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1518684079-3c830dcef090?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black38,
                    Colors.black26,
                    Colors.black12,
                  ],
                ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(24.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Icon(
                                MdiIcons.cashRegister,
                                size: 64.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SuperApp",
                                  style: GoogleFonts.blackOpsOne(
                                    fontSize: 32.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.0,
                                ),
                                Container(
                                  transform:
                                      Matrix4.translationValues(0.0, -10, 0),
                                  child: Text(
                                    "Simple but not simpler",
                                    style: GoogleFonts.blackOpsOne(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                          .animate()
                          .moveY(
                            begin: -100,
                            duration: 800.ms,
                          )
                          .fadeIn(
                            duration: 1200.ms,
                          ),
                      SizedBox(
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
                          .moveX(
                            begin: -300,
                            duration: 800.ms,
                          )
                          .fadeIn(
                            duration: 1200.ms,
                          ),
                      QTextField(
                        label: "Password",
                        obscure: true,
                        validator: Validator.required,
                        suffixIcon: Icons.password,
                        value: null,
                        onChanged: (value) {
                          controller.state.password = value;
                        },
                      )
                          .animate()
                          .moveX(
                            begin: 300,
                            duration: 800.ms,
                          )
                          .fadeIn(
                            duration: 1200.ms,
                          ),
                      QButton(
                        label: "Login",
                        onPressed: () {
                          bool isValid = formKey.currentState!.validate();
                          if (!isValid) {
                            return;
                          }
                          controller.login();
                        },
                      )
                          .animate()
                          .moveY(
                            begin: 300,
                            duration: 800.ms,
                          )
                          .fadeIn(
                            duration: 1200.ms,
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
