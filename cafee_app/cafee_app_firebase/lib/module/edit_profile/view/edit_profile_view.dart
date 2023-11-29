import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';
import 'package:get_it/get_it.dart';
import 'package:hyper_ui/model/user_profile/user_profile.dart';

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
      body: SingleChildScrollView(
        child: StreamBuilder<DocumentSnapshot<Object?>>(
          stream: UserProfileService().myDocument.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return const Text("Error");
            if (!snapshot.hasData) return const Text("No Data");
            if (snapshot.data == null) return Container();

            Map<String, dynamic>? data;
            UserProfile? item;
            if (snapshot.data?.data() != null) {
              data = snapshot.data?.data() as Map<String, dynamic>;
              item = UserProfile.fromJson(data);
            }

            if (state.userProfile == null) {
              state.userProfile = item;
            }

            return Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  QImagePicker(
                    label: "Photo",
                    validator: Validator.required,
                    value: item?.photo,
                    onChanged: (value) {
                      state.userProfile?.photo = value;
                    },
                  ),
                  QTextField(
                    label: "Name",
                    validator: Validator.required,
                    value: item?.name,
                    onChanged: (value) {
                      state.userProfile?.name = value;
                    },
                  ),
                  QTextField(
                    label: "Email",
                    validator: Validator.email,
                    suffixIcon: Icons.email,
                    value: "demo@gmail.com",
                    enabled: false,
                    onChanged: (value) {},
                  ),
                  Divider(),
                  QTextField(
                    label: "Store name",
                    validator: Validator.required,
                    value: item?.storeName,
                    onChanged: (value) {
                      state.userProfile?.storeName = value;
                    },
                  ),
                  QTextField(
                    label: "Store phone number",
                    validator: Validator.required,
                    value: item?.storePhoneNumber,
                    onChanged: (value) {
                      state.userProfile?.storePhoneNumber = value;
                    },
                  ),
                  QMemoField(
                    label: "Store address",
                    validator: Validator.required,
                    value: item?.storeAddress,
                    onChanged: (value) {
                      state.userProfile?.storeAddress = value;
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: QActionButton(
        label: "Save",
        onPressed: () => controller.save(),
      ),
    );
  }
}
