import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:get_it/get_it.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  RegisterController controller = RegisterController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (GetIt.I.isRegistered<RegisterController>()) {
      GetIt.I.unregister<RegisterController>();
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
      child: BlocListener<RegisterController, RegisterState>(
        listener: (context, state) {},
        child: BlocBuilder<RegisterController, RegisterState>(
          builder: (context, state) {
            final bloc = context.read<RegisterController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    RegisterController controller,
    RegisterState state,
  ) {
    return Scaffold(
      backgroundColor: Color(0xff1c1c1c),
      body: SafeArea(
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
                Text(
                  "Register new account",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
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
                  value: null,
                  onChanged: (value) {
                    controller.state.password = value;
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
                  label: "Register",
                  onPressed: () async {
                    bool isValid = formKey.currentState!.validate();
                    if (!isValid) {
                      return;
                    }

                    showLoading();
                    bool isSuccess = await controller.register();
                    hideLoading();

                    if (!isSuccess) {
                      snackbarDanger(message: "Failed to register!");
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
                Center(
                  child: InkWell(
                    onTap: () => Get.offAll(LoginView()),
                    child: Text(
                      "Already have an account?",
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
    );
  }
}
