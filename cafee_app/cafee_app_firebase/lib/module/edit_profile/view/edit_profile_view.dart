import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:get_it/get_it.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  EditProfileController controller = EditProfileController();

  @override
  void initState() {
    if (GetIt.I.isRegistered<EditProfileController>()) {
      GetIt.I.unregister<EditProfileController>();
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
      child: BlocListener<EditProfileController, EditProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<EditProfileController, EditProfileState>(
          builder: (context, state) {
            final bloc = context.read<EditProfileController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    EditProfileController controller,
    EditProfileState state,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('EditProfile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            QImagePicker(
              label: "Photo",
              validator: Validator.required,
              value: "https://i.ibb.co/PGv8ZzG/me.jpg",
              onChanged: (value) {},
            ),
            QTextField(
              label: "Name",
              validator: Validator.required,
              value: null,
              onChanged: (value) {},
            ),
            QTextField(
              label: "Email",
              validator: Validator.email,
              suffixIcon: Icons.email,
              value: "demo@gmail.com",
              enabled: false,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.save(),
      ),
    );
  }
}
