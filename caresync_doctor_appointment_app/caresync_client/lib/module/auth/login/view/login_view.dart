import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/core.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  LoginBloc bloc = LoginBloc();

  @override
  void initState() {
    if (GetIt.I.isRegistered<LoginBloc>())
      GetIt.I.unregister<LoginBloc>();
    GetIt.I.registerSingleton(bloc);
    bloc.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.ready(),
    );
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => bloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state.isLoginSuccess) {
            Get.offAll(PatientMainNavigationView());
          }
        },
        child: BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            final bloc = context.read<LoginBloc>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    LoginBloc bloc,
    LoginState state,
  ) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff006dfa),
              Color(0xff003e88),
            ],
          ),
        ),
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icon/icon_white.png",
                        fit: BoxFit.fill,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://i.ibb.co/TLMPNjd/doctor-kita-removebg-preview.png",
                      width: MediaQuery.of(context).size.width * 0.6,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  child: ElevatedButton.icon(
                    icon: Icon(Icons.phone),
                    label: Text("Login by phone number"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: infoColor,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  child: ElevatedButton.icon(
                    icon: Icon(MdiIcons.facebook),
                    label: Text("Login by Facebook"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: infoColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  child: ElevatedButton.icon(
                    icon: Icon(MdiIcons.google),
                    label: Text("Login by Google"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: dangerColor,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      // Get.offAll(PatientMainNavigationView());
                      bloc.add(LoginByGoogleEvent());
                    },
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    "Masuk menggunakan Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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
