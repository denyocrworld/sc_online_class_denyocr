import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../controller/profile_controller.dart';
import '../state/profile_state.dart';
import 'package:get_it/get_it.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ProfileController controller = ProfileController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<ProfileController>()) {
      GetIt.I.unregister<ProfileController>();
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
      child: BlocListener<ProfileController, ProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<ProfileController, ProfileState>(
          builder: (context, state) {
            final bloc = context.read<ProfileController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProfileController controller,
    ProfileState state,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            onTap: ()=> controller.logout(),
            title: Text(
              "Logout",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
            trailing: Icon(
              Icons.chevron_right,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}
